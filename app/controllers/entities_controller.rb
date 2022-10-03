# frozen_string_literal: true

class EntitiesController < ApplicationController
  before_action :reindex
  before_action :set_entity, only: %i[show]
  before_action :set_filters, only: %i[index autocomplete]

  # GET /entities
  def index
    query = params[:search] || '*'

    operator = params[:operator] || 'or'

    results = Entity.search(
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

  private

  def reindex
    Entity.reindex if ENV['RAILS_ENV'] == 'test'
  rescue Searchkick::Error
  end

  def set_entity
    @entity = Entity.find(params[:id])
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
        clean_description: entity.clean_description
      }
    end
  end

  # Only allow a list of trusted parameters through.
  # def entity_params
  #   params.fetch(:entity, {})
  # end
end
