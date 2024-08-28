# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EntitiesController do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/entities').to route_to('entities#index', format: :json)
    end

    it 'routes to #show' do
      expect(get: '/entities/1').to route_to('entities#show', id: '1', format: :json)
    end

    it 'routes to #create' do
      expect(post: '/entities').to route_to('entities#create', format: :json)
    end

    it 'routes to #update via PUT' do
      expect(put: '/entities/1').to route_to('entities#update', id: '1', format: :json)
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/entities/1').to route_to('entities#update', id: '1', format: :json)
    end

    it 'routes to #destroy' do
      expect(delete: '/entities/1').to route_to('entities#destroy', id: '1', format: :json)
    end
  end
end
