# frozen_string_literal: true

class EntitiesController < ApplicationController
  before_action :reindex
  before_action :set_entity, only: %i[show]
  before_action :set_filters, only: %i[index autocomplete]

  # GET /entities
  def index
    query = params[:q] || '*'

    results = Entity.search(
      query,
      aggs: { e_type: {} },
      page: params[:page] || 1,
      per_page: params[:per_page] || 25,
      fields: @fields,
      operator: 'or',
      load: false,
      where: @where
    )

    @aggs = results.aggs

    include_pagination(results)

    @entities = entities_from_results(results)

    render
  end

  # GET /entities/autocomplete?q=*
  def autocomplete
    render json: Entity.search(
      params[:q],
      fields: [:clean_label],
      match: :word_start,
      limit: 10,
      load: false,
      misspellings: { below: 5 },
      where: @where
    ).map(&:label)
  end

  private

  def reindex
    Entity.reindex if ENV['RAILS_ENV'] == 'test'
  end

  def set_entity
    @entity = Entity.find(params[:id])
  end

  def set_filters
    @where = params[:type].present? ? { e_type: params[:type] } : {}

    @where[:clean_label] = params[:label] if params[:label].present?

    @fields = if params[:fields].present?
                params[:fields].split(',').map(&:strip).map(&:to_sym)
              else
                ['clean_label^10', 'clean_description^5', :properties]
              end
  end

  def entities_from_results(results)
    results.map do |entity|
      {
        id: entity.id_path,
        label: entity.label,
        type: entity.e_type,
        short_display: entity.short_display,
        description: entity.description,
        clean_label: entity.clean_label,
        clean_description: entity.clean_description
      }.merge(entity.properties)
    end
  end

  # Only allow a list of trusted parameters through.
  # def entity_params
  #   params.fetch(:entity, {})
  # end
end
