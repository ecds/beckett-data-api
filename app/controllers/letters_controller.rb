# frozen_string_literal: true

class LettersController < ApplicationController
  before_action :set_letter, only: %i[show]
  before_action :set_filters, only: %i[index]


  # GET /letters
  def index
    Letter.reindex if ENV['RAILS_ENV'] == 'test'

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
    Letter.reindex if ENV['RAILS_ENV'] == 'test'
    @letter = Letter.find(params[:id])
  end

  def set_filters
    @where = { _and: [] }
    @fields = []

    params[:fields].split(',').each {|field| @fields.push(field.to_sym) } if params[:fields].present?

    if params[:start_date] || params[:end_date]
      @where[:_and].push(
        {
          date: {
            gte: parse_date(params[:start_date]) || DateTime.new(1957)
          }
        }
      )

      @where[:_and].push(
        {
          date: {
            lte: parse_date(params[:end_date]) || DateTime.new(1965, 12).at_end_of_month
          }
        }
      )
    end

    # if params[:recipients].present?
    #   recipients = params[:recipients].split(',')
    #   @where[:recipients] = { in: recipients }
    # end

    # if params[:mentions].present?
    #   mentions = params[:mentions].split(',')
    #   @where[:mentions] = { in: mentions }
    # end
  end

  def parse_date(date)
    return if date.nil?

    Date.parse(date)
  end

  # Only allow a list of trusted parameters through.
  # def letter_params
  #   params.fetch(:letter, {})
  # end
end
