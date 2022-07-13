# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '/entities', type: :request do
  let(:valid_attributes) { {} }

  let(:invalid_attributes) { {} }

  let(:valid_headers) { {} }

  describe 'GET /index' do
    it 'renders a successful response' do
      create_list(:entity, 2)
      get entities_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end

    it 'returns entities by type' do
      types = Entity.e_types.keys.sample(4)
      types.each do |type|
        create_list("#{type}_entity".to_sym, rand(3..6), :public)
        get entities_url, params: { type: type }
        expect(json[:entities].pluck(:type)).to all eq(type)
        expect(json[:meta][:total_count]).to be < Entity.count
      end
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      entity = create(:entity)
      get entity_url(entity), as: :json
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Entity' do
        expect {
          post entities_url,
               params: { entity: valid_attributes }, headers: valid_headers, as: :json
        }.not_to change(Entity, :count)
        expect(response).to have_http_status(:not_implemented)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      it 'updates the requested entity' do
        entity = create(:entity)
        patch letter_url(entity),
              params: { entity: {} }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:not_implemented)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested entity' do
      entity = create(:entity)
      expect {
        delete letter_url(entity), headers: valid_headers, as: :json
      }.not_to change(Entity, :count)
      expect(response).to have_http_status(:not_implemented)
    end
  end
end
