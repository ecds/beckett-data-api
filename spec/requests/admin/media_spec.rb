# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Admin::Media' do
  describe 'GET index' do
    it 'requires authentication' do
      get admin_media_path
      expect(response).to have_http_status(:unauthorized)
    end

    it 'renders successfully when authenticated' do
      create(:medium)
      get admin_media_path, headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET show' do
    it 'renders successfully when authenticated' do
      medium = create(:medium)
      get admin_medium_path(medium), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET new' do
    it 'renders successfully when authenticated' do
      get new_admin_medium_path, headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET edit' do
    it 'renders successfully when authenticated' do
      medium = create(:medium)
      get edit_admin_medium_path(medium), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end
end
