# frozen_string_literal: true

class LettersController < ApplicationController
  before_action :reindex
  before_action :set_letter, only: %i[show]
  before_action :set_filters, only: %i[index]

  # GET /letters
  def index
    query = params[:search] || '*'

    results = PublishedLetter.search(
      query,
      aggs: facets,
      page: params[:page] || 1,
      per_page: params[:per_page] || 25,
      where: @where,
      fields: @fields,
      operator: 'or',
      order: { date: :asc },
      load: false
    )

    @aggs = results.aggs

    include_pagination(results)

    @letters = letters_from_results(results)

    render
  end

  private

  def set_letter
    @letter = Letter.find(params[:id])
  end

  def letters_from_results(results)
    letters = results.map do |letter|
      {
        id: "#{request.protocol}#{request.host_with_port}#{letter.id_path}",
        date: letter.date,
        label: letter.label,
        language: letter.language,
        volume: letter.volume,
        recipients: letter.recipients,
        destinations: letter.destinations,
        origins: letter.orgins,
        mentions: letter.mentions
      }
    end

    letters.each do |letter|
      letter[:mentions].each_key do |key|
        letter[:mentions][key].each_with_index do |_, index|
          letter[:mentions][key][index][:id] =
            "#{request.protocol}#{request.host_with_port}#{letter[:mentions][key][index][:id]}"
        end
      end
    end

    letters
  end

  def facets
    {
      date: {
        date_histogram: {
          field: :date,
          interval: :year
        }
      },
      language: {},
      repositories: {},
      volume: {}
    }
  end

  def set_filters
    @where = { published: true, _and: [] }

    @fields = if params[:fields].present?
                params[:fields].split(',').map(&:strip).map(&:to_sym)
              else
                %i[recipients destinations origins mentions repositories]
              end

    if params[:start_date]
      @where[:_and].push(
        {
          date: {
            gte: Date.parse(params[:start_date])
          }
        }
      )
    end

    if params[:end_date]
      @where[:_and].push(
        {
          date: {
            lte: Date.parse(params[:end_date])
          }
        }
      )
    end

    @where[:recipients] = { in: params[:recipients].split(',').map(&:strip) } if params[:recipients].present?

    @where[:destinations] = { in: params[:destinations].split(',').map(&:strip) } if params[:destinations].present?

    @where[:origins] = { in: params[:origins].split(',').map(&:strip) } if params[:origins].present?

    @where[:senders] = { in: params[:senders].split(',').map(&:strip) } if params[:senders].present?

    @where[:repositories] = { in: params[:repositories].split(',').map(&:strip) } if params[:repositories].present?

    @where[:language] = { in: params[:languages].downcase.split(',').map(&:strip) } if params[:languages].present?

    @where[:volume] = { in: params[:volumes].split(',').map(&:to_i) } if params[:volumes].present?
  end

  def reindex
    Letter.reindex if ENV['RAILS_ENV'] == 'test'
    PublishedLetter.reindex if ENV['RAILS_ENV'] == 'test'
  end

  # Only allow a list of trusted parameters through.
  # def letter_params
  #   params.fetch(:letter, {})
  # end
end
