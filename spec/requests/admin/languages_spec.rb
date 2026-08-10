# frozen_string_literal: true

require 'rails_helper'

# Only `show` is routed for languages (config/routes.rb) - no index/new/edit to cover.
RSpec.describe 'Admin::Languages' do
  describe 'GET show' do
    it 'requires authentication' do
      language = create(:language)
      get admin_language_path(language)
      expect(response).to have_http_status(:unauthorized)
    end

    it 'renders successfully when authenticated' do
      language = create(:language)
      get admin_language_path(language), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end
end
