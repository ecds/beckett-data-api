# frozen_string_literal: true

class EntitiesController < ApplicationController
  before_action :reindex
  before_action :set_entity, only: %i[show letters]
  before_action :set_filters, only: %i[index autocomplete]

  # GET /entities
  def index
    query = params[:search] || '*'

    operator = params[:operator] || 'or'

    results = PublishedEntity.search(
      query,
      aggs: { e_type: {} },
      page: params[:page] || 1,
      per_page: params[:per_page] || 25,
      fields: @fields,
      operator:,
      load: false,
      where: @where,
      misspellings: { below: 5 }
    )

    @aggs = results.aggs

    include_pagination(results)

    @entities = entities_from_results(results)

    render
  end

  # GET /entities/autocomplete?search=*
  def autocomplete
    query = strip_tags params[:searcn]
    render json: Entity.search(
      query,
      fields: [:clean_label],
      match: :word_start,
      limit: 10,
      load: false,
      misspellings: { below: 5 },
      where: @where
    ).map(&:label).uniq
  end

  def list
    entities = Entity.where.not(legacy_pk: 99_999_999).where.not(legacy_pk: 88_888_888)
    render json: entities.map {|e| { id: e.id, legacy_pk: e.legacy_pk, type: e.e_type } }
  end

  def letters
    @page = params[:page] || 1
    @per_page = params[:per_page] || 10
    @min_date, @max_date = min_max_dates(params[:relation])
    @start_date = params[:start_date] || @min_date
    @end_date = params[:end_date] || @max_date

    @letters = requested_letters(params[:relation])

    # @min_date = @letters.map(&:date).compact.min
    # @max_date = @letters.map(&:date).compact.max

    render
  end

  private

  def reindex
    Entity.reindex if ENV['RAILS_ENV'] == 'test'
    PublishedEntity.reindex if ENV['RAILS_ENV'] == 'test'
  rescue Searchkick::Error
  end

  def set_entity
    entity = Entity.find(params[:id])
    entity.save if ENV['RAILS_ENV'] == 'test'
    @entity = entity
  end

  def set_filters
    @where = { published: true }

    @where[:e_type] = params[:type] if params[:type].present?

    @where[:clean_label] = params[:label] if params[:label].present?

    # rubocop:disable Layout/LineLength
    @fields = if params[:fields].present?
                params[:fields].sub! 'label', 'clean_label^10' unless params[:fields].include? 'clean_label'
                params[:fields].sub! 'description', 'clean_description^5' unless params[:fields].include? 'clean_description'
                params[:fields].split(',').map(&:strip).map(&:to_sym)
              else
                ['clean_label^10', 'clean_description^5', 'alternate_names^9', 'alternate_spellings^8']
              end
    # rubocop:enable Layout/LineLength
  end

  def entities_from_results(results)
    results.map do |entity|
      {
        id: "#{request.protocol}#{request.host_with_port}#{entity.id_path}",
        label: entity.label,
        type: entity.e_type,
        short_display: entity.short_display,
        description: entity.description,
        clean_label: entity.clean_label,
        clean_description: entity.clean_description,
        published: entity.published
      }
    end
  end

  def min_max_dates(relation)
    case relation
    when 'mention'
      @entity.letters.published.map(&:date).compact.minmax
    when 'destination'
      @entity.letters_sent_to.published.map(&:date).compact.minmax
    when 'sent'
      @entity.letters_sent.published.map(&:date).compact.minmax
    when 'origin'
      @entity.letters_sent_from.published.map(&:date).compact.minmax
    when 'recivied'
      @entity.letters_received.published.map(&:date).compact.minmax
    end
  end

  def requested_letters(relation)
    case relation
    when 'mention'
      @entity.letters.published.between(@start_date, @end_date).page(@page).per(@per_page)
    when 'destination'
      @entity.letters_sent_to.published.between(@start_date, @end_date).page(@page).per(@per_page)
    when 'sent'
      @entity.letters_sent.published.between(@start_date, @end_date).page(@page).per(@per_page)
    when 'origin'
      @entity.letters_sent_from.published.between(@start_date, @end_date).page(@page).per(@per_page)
    when 'recivied'
      @entity.letters_received.published.between(@start_date, @end_date).page(@page).per(@per_page)
    end
  end

  # def filter_letters(params)
  #   start_date = Date.parse(params[:start] || min_date.to_s)
  #   end_date = Date.parse(params[:end] || max_date.to_s)
  #   @letters = @letters.where('date >= ? AND date <= ?', start_date, end_date)
  # end

  # Only allow a list of trusted parameters through.
  # def entity_params
  #   params.fetch(:entity, {})
  # end
end
