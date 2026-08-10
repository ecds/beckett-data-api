# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Admin::Mentions' do
  describe 'GET index' do
    it 'requires authentication' do
      get admin_mentions_path
      expect(response).to have_http_status(:unauthorized)
    end

    it 'renders successfully when authenticated' do
      create(:mention)
      get admin_mentions_path, headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET show' do
    it 'renders successfully when authenticated' do
      mention = create(:mention)
      get admin_mention_path(mention), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET new' do
    it 'renders successfully when authenticated' do
      get new_admin_mention_path, headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET edit' do
    it 'renders successfully when authenticated' do
      mention = create(:mention)
      get edit_admin_mention_path(mention), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end
end
