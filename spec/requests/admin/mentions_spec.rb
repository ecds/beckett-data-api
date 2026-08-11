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

    # Regression test: ActsAsTaggableField's #tags previously blew up on a real tagged
    # mention outside of a bare smoke test, since the untagged factory default never
    # exercised the field's actual data-fetching path (see acts_as_taggable_field_spec.rb).
    it 'renders the tags of a tagged mention' do
      create(:mention, tag_list: 'battle, correspondence')
      get admin_mentions_path, headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
      expect(response.body).to include('battle').and include('correspondence')
    end
  end

  describe 'GET show' do
    it 'renders successfully when authenticated' do
      mention = create(:mention)
      get admin_mention_path(mention), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end

    it 'renders the tags of a tagged mention' do
      mention = create(:mention, tag_list: 'battle, correspondence')
      get admin_mention_path(mention), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
      expect(response.body).to include('battle').and include('correspondence')
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

    it 'pre-populates the tag list input of a tagged mention' do
      mention = create(:mention, tag_list: 'battle, correspondence')
      get edit_admin_mention_path(mention), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
      expect(response.body).to include('value="battle, correspondence"')
    end
  end
end
