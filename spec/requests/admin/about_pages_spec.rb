# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Admin::AboutPages' do
  describe 'GET index' do
    it 'requires authentication' do
      get admin_about_pages_path
      expect(response).to have_http_status(:unauthorized)
    end

    it 'renders successfully when authenticated' do
      create(:about_page)
      get admin_about_pages_path, headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET show' do
    it 'renders successfully when authenticated' do
      about_page = create(:about_page)
      get admin_about_page_path(about_page), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET edit' do
    it 'renders successfully when authenticated' do
      about_page = create(:about_page)
      get edit_admin_about_page_path(about_page), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end

  describe '#accessible_action?' do
    # Admin::AboutPagesController#accessible_action? is meant to hide the "new" and
    # "destroy" links/buttons (its guard checks `name.to_s` against
    # %w[destroy add new create]). In practice it doesn't work: Administrate's views
    # call accessible_action?(resource, action) - resource first - but the override's
    # parameters are (name, resource = resource_class), so `name` is bound to the
    # resource object, not the action name, and `name.to_s` never matches the exclude
    # list. Both links render anyway. This documents the actual behavior as a known
    # bug rather than silently patching it or asserting the intended-but-wrong behavior.
    it 'still renders the "new" link on the index page' do
      get admin_about_pages_path, headers: admin_auth_headers
      expect(response.body).to include(%(href="#{new_admin_about_page_path}"))
    end

    it 'still renders the "destroy" button on the show page' do
      about_page = create(:about_page)
      get admin_about_page_path(about_page), headers: admin_auth_headers
      expect(response.body).to include(%(action="#{admin_about_page_path(about_page)}"))
        .and include('button--danger')
    end
  end
end
