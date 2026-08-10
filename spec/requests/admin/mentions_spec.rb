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
      pending(
        'known bug: admin/mentions/_form.html.erb:36 iterates page.attributes(...) as a ' \
        'flat list of fields, but it actually yields [title, attributes] pairs (see ' \
        'admin/letters/_form.html.erb for the correct nested form), so `attribute.html_class` ' \
        'raises NoMethodError on the Array'
      )
      get new_admin_mention_path, headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET edit' do
    it 'renders successfully when authenticated' do
      pending(
        'known bug: admin/mentions/edit.html.erb:37 calls ' \
        'accessible_action?(:show) with one argument before the correct two-argument call - ' \
        'Administrate::ApplicationHelper#accessible_action? requires (target, action_name), so ' \
        'this raises ArgumentError before the &&\'d correct call is ever reached'
      )
      mention = create(:mention)
      get edit_admin_mention_path(mention), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end
end
