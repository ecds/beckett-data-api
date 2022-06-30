# frozen_string_literal: true

class ApplicationController < ActionController::API
  class_attribute :pagination_links, default: {}

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

  private

  def pagination_header(scope)
    request_params = request.query_parameters
    url_without_params = unless request_params.empty?
                           request.original_url.slice(0..(request.original_url.index('?') - 1))
                         end

    url_without_params ||= request.original_url

    @pagination_links = {}
    @pagination_links[:first] = 1 if scope.total_pages > 1 && !scope.first_page?
    @pagination_links[:last] = scope.total_pages  if scope.total_pages > 1 && !scope.last_page?
    @pagination_links[:next] = scope.current_page + 1 unless scope.last_page?
    @pagination_links[:prev] = scope.current_page - 1 unless scope.first_page?

    pagination_header_links = []
    @pagination_links.each do |k, v|
      new_request_hash = request_params.merge({ page: v })
      page_url = "#{url_without_params}?#{new_request_hash.to_param}"
      @pagination_links[k] = page_url
      pagination_header_links << "<#{page_url}>; rel=\'#{k}\'"
    end
    headers['Link'] = pagination_header_links.join(', ')
    headers['X-Total-Count'] = scope.total_count
  end
end
