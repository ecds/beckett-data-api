# frozen_string_literal: true

class ApplicationController < ActionController::API
  include ActionView::Helpers::SanitizeHelper

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  class_attribute :pagination_links, default: {}

  # GET /:id
  def show
    render
  end

  # POST /
  def create
    head :not_implemented
  end

  # PATCH/PUT /
  def update
    head :not_implemented
  end

  # DELETE /
  def destroy
    head :not_implemented
  end

  def render_not_found
    render json: { error: 'not found' }, status: :not_found
  end

  private

  # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
  def include_pagination(scope)
    request_params = request.query_parameters
    url_without_params = unless request_params.empty?
                           request.original_url.slice(0..(request.original_url.index('?') - 1))
                         end

    url_without_params ||= request.original_url

    @pagination_meta = {}

    @pagination_meta[:page] = scope.current_page
    @pagination_meta[:per_page] = scope.limit_value
    @pagination_meta[:page_count] = scope.total_pages
    @pagination_meta[:total_count] = scope.total_count

    pagination_links = {}
    pagination_links[:self] = scope.current_page
    pagination_links[:first] = 1 if scope.total_pages > 1 && !scope.first_page?
    pagination_links[:last] = scope.total_pages  if scope.total_pages > 1 && !scope.last_page?
    pagination_links[:next] = scope.current_page + 1 unless scope.last_page?
    pagination_links[:prev] = scope.current_page - 1 unless scope.first_page?

    pagination_header_links = []
    pagination_links.each do |k, v|
      new_request_hash = request_params.merge({ page: v })
      page_url = "#{url_without_params}?#{new_request_hash.to_param}"
      pagination_links[k] = page_url
      pagination_header_links << "<#{page_url}>; rel='#{k}'"
    end
    headers['Link'] = pagination_header_links.join(', ')
    headers['X-Total-Count'] = scope.total_count

    @pagination_meta[:links] = pagination_links
  end
  # rubocop:enable Metrics/AbcSize, Metrics/MethodLength
end
