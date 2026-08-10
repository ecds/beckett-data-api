# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Admin::Entities' do
  describe 'GET index' do
    it 'requires authentication' do
      get admin_entities_path
      expect(response).to have_http_status(:unauthorized)
    end

    it 'renders successfully when authenticated' do
      create(:entity)
      get admin_entities_path, headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end

    it 'excludes entities with a dash-only or comma-only label' do
      # Entity#remove_blank_values (a before_save callback) normalizes a genuinely
      # blank label to nil before it ever reaches the DB - and label is NOT NULL - so
      # only the dash/comma placeholder values are reachable to test here. Building +
      # saving directly (rather than the :entity factory's create strategy) skips the
      # factory's own after(:create) hook, which randomly wraps label in <i> tags to
      # fuzz other specs - that would make the exact-string match below flaky.
      #
      # Each is looked up by its own unique legacy_pk (searchable), rather than
      # scanning the shared, unpaginated index page, since the label exclusion filter
      # (in the controller) applies after search regardless - this keeps the
      # assertion independent of how much other data/pagination exists from other
      # specs sharing this DB.
      #
      # e_type is pinned to 'place' deliberately: Entity#concat_label (another
      # before_save callback) rewrites label entirely for e_type 'attendance' or
      # 'person', which would silently clobber the exact label this test depends on
      # if the factory's random e_type happened to land on either.
      good = build(:entity, label: 'A Real Label', e_type: 'place').tap {|e| e.save!(validate: false) }
      dash = build(:entity, label: '-', e_type: 'place').tap {|e| e.save!(validate: false) }
      comma = build(:entity, label: ', ', e_type: 'place').tap {|e| e.save!(validate: false) }

      get admin_entities_path(search: good.legacy_pk), headers: admin_auth_headers
      expect(response.body).to include(admin_entity_path(good))

      get admin_entities_path(search: dash.legacy_pk), headers: admin_auth_headers
      expect(response.body).not_to include(admin_entity_path(dash))

      get admin_entities_path(search: comma.legacy_pk), headers: admin_auth_headers
      expect(response.body).not_to include(admin_entity_path(comma))
    end
  end

  describe 'GET show' do
    it 'renders successfully when authenticated' do
      entity = create(:entity)
      get admin_entity_path(entity), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET new' do
    it 'renders successfully when authenticated' do
      get new_admin_entity_path, headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end

    it 'pre-populates e_type from the type param' do
      get new_admin_entity_path(type: 'place'), headers: admin_auth_headers
      expect(response.body).to include('name="entity[e_type]" value=place')
    end
  end

  describe 'GET edit' do
    it 'renders successfully when authenticated' do
      entity = create(:entity)
      get edit_admin_entity_path(entity), headers: admin_auth_headers
      expect(response).to have_http_status(:ok)
    end
  end
end
