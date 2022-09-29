# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '/letters', type: :request do
  let(:valid_attributes) { {} }

  let(:invalid_attributes) { {} }

  let(:valid_headers) { {} }

  describe 'GET /index' do
    it 'renders a successful response' do
      create_list(:published_letter, 3)
      get letters_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end

    it 'renders only plblically avaliable letters' do
      create_list(:published_letter, 4)
      create_list(:letter, 3, repositories: create_list(:repository, 1, published: false))
      create_list(:new_letter, 5, repositories: create_list(:repository, 1, published: false))
      get "#{letters_url}.json", headers: valid_headers, as: :json
      expect(Letter.published.count).to eq(4)
      expect(json[:letters].count).to eq(4)
      expect(Letter.count).to eq(12)
    end

    it 'renders paginated links in json response' do
      create_list(:published_letter, 10)
      get "#{letters_url}.json?page=2&per_page=2"
      expect(json[:letters].count).to eq(2)
      expect(json[:meta][:links][:next]).to eq("#{letters_url}.json?page=3&per_page=2")
      expect(json[:meta][:links][:last]).to eq("#{letters_url}.json?page=5&per_page=2")
      expect(json[:meta][:links][:first]).to eq("#{letters_url}.json?page=1&per_page=2")
      expect(json[:meta][:links][:self]).to eq("#{letters_url}.json?page=2&per_page=2")
      expect(json[:meta][:page]).to eq(2)
      expect(json[:meta][:per_page]).to eq(2)
      expect(json[:meta][:page_count]).to eq(5)
      expect(json[:meta][:total_count]).to eq(10)
    end

    it 'includes pagination information in the headers' do
      create_list(:published_letter, 20)
      get "#{letters_url}.json?page=3&per_page=5"
      links = response.headers['Link'].split(',')
      expect(links.count).to eq(5)
      expect(links[0]).to include('self')
      expect(links[0]).to include('letters.json?page=3&per_page=5')

      expect(links[1]).to include('first')
      expect(links[1]).to include('letters.json?page=1&per_page=5')

      expect(links[2]).to include('last')
      expect(links[2]).to include('letters.json?page=4&per_page=5')

      expect(links[3]).to include('next')
      expect(links[3]).to include('letters.json?page=4&per_page=5')

      expect(links[4]).to include('prev')
      expect(links[4]).to include('letters.json?page=2&per_page=5')

      expect(response.headers['X-Total-Count']).to eq(20)
    end

    it 'renders letters from specific recipients' do
      create_list(:published_letter, 5)
      letters_to_wilkins = create_list(
        :published_letter,
        2,
        recipients: create_list(:person_entity, 1, first_name: 'Dominique', last_name: 'Wilkins')
      )

      letters_to_webb = create_list(
        :published_letter,
        3,
        recipients: create_list(:person_entity, 1, first_name: 'Spud', last_name: 'Webb')
      )

      create_list(
        :published_letter,
        1,
        recipients: [letters_to_wilkins.first.recipients.first, letters_to_webb.first.recipients.first]
      )

      get "#{letters_url}.json?search=Dominique, Spud Webb&fields=recipients"
      expect(json[:letters].count).to eq(6)
    end

    it 'renders letters to specific destinations' do
      create_list(:published_letter, 4)
      create_list(:published_letter, 3, destinations: create_list(:place_entity, 1, label: 'Reynoldstown'))
      create_list(:published_letter, 4, destinations: create_list(:place_entity, 1, label: 'Grant Park'))

      create_list(
        :published_letter,
        2,
        destinations: [Entity.find_by(label: 'Reynoldstown'), Entity.find_by(label: 'Grant Park')]
      )

      get "#{letters_url}.json?search=Reynoldstwn, Grant&fields=destinations"
      expect(json[:letters].count).to eq(9)
    end

    it 'returns letters with start_date param' do
      create_list(:published_letter, 10)
      create(:published_letter, date: DateTime.new(1961, 2, 22))
      get "#{letters_url}?start_date=1960-03-14"
      expect(json[:letters].map {|letter| Date.parse(letter[:date]) }.min).to be >= DateTime.new(1960, 3, 14)
      expect(json[:letters].count).to be > 0
    end

    it 'returns letters with end_date param' do
      create_list(:published_letter, 10)
      create(:published_letter, date: DateTime.new(1961, 2, 22))
      get "#{letters_url}?end_date=1964-03-14"
      expect(json[:letters].map {|letter| Date.parse(letter[:date]) }.max).to be <= DateTime.new(1964, 3, 14)
      expect(json[:letters].count).to be > 0
    end

    it 'returns letters with start_date and end_date params' do
      create_list(:published_letter, 10)
      create(:published_letter, date: DateTime.new(1961, 2, 22))
      get "#{letters_url}?start_date=1957-03-14&end_date=1963-03-14"
      expect(json[:letters].map {|letter| Date.parse(letter[:date]) }.min).to be >= DateTime.new(1957, 3, 14)
      expect(json[:letters].map {|letter| Date.parse(letter[:date]) }.max).to be <= DateTime.new(1963, 3, 14)
      expect(json[:letters].count).to be > 0
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      letter = create(:published_letter)
      get letter_url(letter), as: :json
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Letter' do
        expect {
          post letters_url,
               params: { letter: valid_attributes }, headers: valid_headers, as: :json
        }.not_to change(Letter, :count)
        expect(response).to have_http_status(:not_implemented)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      it 'updates the requested letter' do
        letter = create(:letter)
        patch letter_url(letter),
              params: { letter: {} }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:not_implemented)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested letter' do
      letter = create(:letter)
      expect {
        delete letter_url(letter), headers: valid_headers, as: :json
      }.not_to change(Letter, :count)
      expect(response).to have_http_status(:not_implemented)
    end
  end
end
