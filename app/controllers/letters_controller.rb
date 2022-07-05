# frozen_string_literal: true

class LettersController < ApplicationController
  before_action :set_letter, only: %i[show]

  # GET /letters
  def index
    facets = {
      date: {
        date_histogram: {
          field: :date,
          interval: :year
        }
      },
      language: {},
      repositories: {}
    }

    where = {}

    query = params[:q] || '*'

    @letters = Letter.search(
      query,
      aggs: facets,
      page: params[:page] || 1,
      per_page: params[:per_page] || 25,
      where: where
    )

    include_pagination(@letters)

    render
  end

  # GET /letters/1
  def show
    render json: @letter
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_letter
    @letter = Letter.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def letter_params
    params.fetch(:letter, {})
  end
end
