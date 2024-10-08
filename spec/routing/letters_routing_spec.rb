# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LettersController do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/letters').to route_to('letters#index', format: :json)
    end

    it 'routes to #show' do
      expect(get: '/letters/1').to route_to('letters#show', id: '1', format: :json)
    end

    it 'routes to #create' do
      expect(post: '/letters').to route_to('letters#create', format: :json)
    end

    it 'routes to #update via PUT' do
      expect(put: '/letters/1').to route_to('letters#update', id: '1', format: :json)
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/letters/1').to route_to('letters#update', id: '1', format: :json)
    end

    it 'routes to #destroy' do
      expect(delete: '/letters/1').to route_to('letters#destroy', id: '1', format: :json)
    end
  end
end
