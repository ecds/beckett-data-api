# frozen_string_literal: true

class EntitiesController < ApplicationController
  before_action :set_entity, only: %i[show]

  # GET /entities
  def index
    @entities = Entity.all

    render json: @entities
  end

  # GET /entities/1
  def show
    render
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_entity
    @entity = Entity.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  # def entity_params
  #   params.fetch(:entity, {})
  # end
end
