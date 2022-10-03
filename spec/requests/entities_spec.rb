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
      types = Entity.e_types.keys[0..11].sample(4)
      types.each do |type|
        create_list("#{type}_entity".to_sym, rand(3..6), :published)
        get entities_url, params: { type: }
        expect(json[:entities].pluck(:type)).to all eq(type)
        expect(json[:meta][:total_count]).to be < Entity.count
      end
    end

    it 'returns search results using default operator - or' do
      create_list(:entity, 2)
      e1 = create(:place_entity, label: 'Schloss Wernigerode', letters: create_list(:published_letter, 1))
      e1.save
      e2 = create(:place_entity, label: 'Schloss Belvedere', letters: create_list(:published_letter, 1))
      e2.save
      get entities_url, params: { search: 'schloss wernigerode' }
      expect(json[:entities].pluck(:label)).to all include('Schloss')
      expect(json[:entities].pluck(:label)[0]).to include('Wernigerode')
      expect(json[:entities].pluck(:label)[1]).to include('Belvedere')
      expect(json[:entities].count).to eq(2)
    end

    it 'returns search results using "and" operator' do
      create_list(:entity, 2)
      e1 = create(:place_entity, label: 'Schloss Wernigerode', letters: create_list(:published_letter, 1))
      e1.save
      e2 = create(:place_entity, label: 'Schloss Belvedere', letters: create_list(:published_letter, 1))
      e2.save
      get entities_url, params: { search: 'schloss belvedere', operator: 'and' }
      expect(json[:entities].pluck(:label)[0]).to include('Schloss Belvedere')
      expect(json[:entities].count).to eq(1)
    end

    it 'returns search results from alternate spellings' do
      create_list(:entity, 2)
      entity = create(
        :person_entity,
        first_name: 'Karl',
        last_name: 'Marx',
        alternate_spellings: ['Friedrich Nietzsche'],
        letters: create_list(:published_letter, 1)
      )
      entity.save
      get entities_url, params: { search: 'nietzsche' }
      expect(json[:entities].pluck(:label)).to include('Marx, Karl')
      expect(json[:entities].count).to eq(1)
    end

    it 'returns search results from description' do
      create_list(:entity, 2)
      entity = create(:person_entity, letters: create_list(:published_letter, 1))
      entity.save
      get entities_url, params: { search: entity.description.split.sample }
      expect(json[:entities].pluck(:label)).to include(entity.label)
      expect(json[:entities].count).to eq(1)
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
