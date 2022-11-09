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

  describe 'GET /entities/:id/letters' do
    it 'returns letters for an entity with start_date param' do
      # rubocop:disable RSpec/FactoryBot/CreateList
      # Each letter needs to have a random year. Using `create_list` will result is all letters having
      # the same random year.
      10.times { create(:published_letter, date: Faker::Date.in_date_period(year: rand(1962..1965))) }

      entity = create(:person_entity, letters: Letter.all)
      expect(entity.letters.count).to eq(10)
      get "/entities/#{entity.id}/letters?relation=mention&start_date=1963-01-01"
      expect(json[:letters].map {|letter| Date.parse(letter[:date]) }.min).to be >= DateTime.new(1963, 1, 1)
      expect(json[:letters].map {|letter| Date.parse(letter[:date]) }.min).to be <= DateTime.new(1965, 12, 30)
      expect(json[:letters].count).to be < entity.letters.count
    end

    it 'returns letters for an entity with end_date param' do
      10.times { create(:published_letter, date: Faker::Date.in_date_period(year: rand(1972..1975))) }
      entity = create(:place_entity, letters_sent_to: Letter.all)
      expect(entity.letters_sent_to.count).to eq(10)
      get "/entities/#{entity.id}/letters?relation=desination&end_date=1974-06-01"
      expect(json[:letters].map {|letter| Date.parse(letter[:date]) }.min).to be >= DateTime.new(1972, 1, 1)
      expect(json[:letters].map {|letter| Date.parse(letter[:date]) }.min).to be <= DateTime.new(1974, 6, 1)
      expect(json[:letters].count).to be < entity.letters_sent_to.count
    end

    it 'returns letters for an entity with start_date and end_date params' do
      10.times { create(:published_letter, date: Faker::Date.in_date_period(year: rand(1971..1975))) }
      entity = create(:person_entity, letters_sent: Letter.all)
      expect(entity.letters_sent.count).to eq(10)
      get "/entities/#{entity.id}/letters?relation=sent&start_date=1972-01-01&end_date=1974-06-01"
      expect(json[:letters].map {|letter| Date.parse(letter[:date]) }.min).to be >= DateTime.new(1972, 1, 1)
      expect(json[:letters].map {|letter| Date.parse(letter[:date]) }.min).to be <= DateTime.new(1974, 6, 1)
      expect(json[:letters].count).to be < entity.letters_sent.count
    end
    # rubocop:enable RSpec/FactoryBot/CreateList

    it 'returns paginated letters for an entity' do
      create_list(:published_letter, 10)
      entity = create(:place_entity, letters_sent_from: Letter.all)
      expect(entity.letters_sent_from.count).to eq(10)
      get "/entities/#{entity.id}/letters?relation=origin&per_page=4&page=2"
      expect(json[:total_pages]).to eq(3)
      expect(json[:letters].count).to eq(4)
      expect(json[:min_date]).to eq(entity.letters_sent_from.published.map(&:date).min.strftime('%Y-%m-%d'))
      expect(json[:max_date]).to eq(entity.letters_sent_from.published.map(&:date).max.strftime('%Y-%m-%d'))
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
