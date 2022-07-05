# frozen_string_literal: true

class LettersController < ApplicationController
  before_action :set_letter, only: %i[show]
  before_action :set_filters, only: %i[index]

  Letter.reindex if ENV['RAILS_ENV'] == 'test'

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

    query = params[:q] || '*'

    @letters = Letter.search(
      query,
      aggs: facets,
      page: params[:page] || 1,
      per_page: params[:per_page] || 25,
      where: @where,
      fields: @fields,
      operator: 'or'
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

  def set_filters
    @where = {}
    @fields = []

    params[:fields].split(',').each {|field| @fields.push(field.to_sym) } if params[:fields].present?

    # if params[:recipients].present?
    #   recipients = params[:recipients].split(',')
    #   @where[:recipients] = { in: recipients }
    # end

    # if params[:mentions].present?
    #   mentions = params[:mentions].split(',')
    #   @where[:mentions] = { in: mentions }
    # end
  end

  # Only allow a list of trusted parameters through.
  def letter_params
    params.fetch(:letter, {})
  end
end
