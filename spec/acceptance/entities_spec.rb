# frozen_string_literal: true

require 'acceptance_helper'

# list_attributes = %i[
#   alternate_names
#   alternate_spellings
#   artist_alternate_spellings
#   attended_with
#   authors
#   cast
#   links
#   performed_by
#   personnel
# ]

# Documentation refers to the Entity model
resource 'Entities' do
  header 'Accept', 'application/json'
  header 'Content-Type', 'application/json'
  explanation ''

  route '/entities{page,per_page}', 'Entities Collection' do
    parameter :page, 'Current page of entities', { type: 'String', default: '1' }
    parameter :per_page, 'Number of entities on a single response.', { default: '25' }
    parameter :search, 'Text to search.', { default: '*' }
    parameter :type,
              "Limit responses by single type. Options are #{Entity.e_types.keys.to_sentence}.",
              { default: 'null' }
    parameter :operator,
              "By default, results match any words in the query. Use 'and' to match all words.",
              { default: 'or' }
  end

  route '/entities/:id', 'Single Entity' do
    Entity.e_types.keys[0..11].each do |type|
      next if type == 'generic'

      get "#{type} Entity" do
        let(:id) {
          create(
            :"#{type}_entity",
            :published,
            letters_received: create_list(:published_letter, 1),
            letters_sent_to: create_list(:published_letter, 1),
            letters_sent: create_list(:published_letter, 1),
            letters_sent_from: create_list(:published_letter, 1)
          ).id
        }

        example_request "GET /entities/:id - #{type.titleize}" do
          expect(status).to eq(200)
        end
      end
    end
  end

  route '/entities', 'POST /entities' do
    post 'Add a entity' do
      let(:request) { { entity: {} } }

      example 'POST /entities' do
        do_request(request)
        expect(status).to eq(501)
      end
    end
  end

  # Requests on a single entity.
  route '/entities/:id', 'Single Entity' do
    put 'Update a specific entity' do
      let(:id) { create(:place_entity, :published).id }

      example_request 'PUT /entities/:id' do
        expect(status).to eq(501)
      end
    end

    delete 'Deletes a specific entity' do
      let(:id) { create(:music_entity).id }

      example_request 'DELETE /entities/:id' do
        expect(status).to eq(501)
      end
    end
  end

  route '/entities/autocomplete', 'GET /entities/autocomplete' do
    parameter :search, 'Text to search.', { default: '*' }
    parameter :type,
              "Limit responses by single type. Options are #{Entity.e_types.keys.join(', ')}.",
              { default: 'null' }

    # rubocop:disable FactoryBot/ExcessiveCreateList
    before { create_list(:person_entity, 50, :published) }
    # rubocop:enable FactoryBot/ExcessiveCreateList

    get 'GET /entities/autocomplete' do
      let(:search) { Entity.all.sample.clean_label[0..1].downcase }

      example_request 'GET /entities/autocomplete?search=:fragment' do
        explanation 'Returns a list of no more than ten entity lables that start with the search parameter.
                    a type parameter can also be passed to limit the results by types. Results might include HTML.'
        expect(status).to eq(200)
      end
    end
  end

  route 'entities/:id/letters', 'GET /entities/:id/letters?relation=' do
    %w[mention destination sent origin received].each do |relation|
      parameter :relation, 'relation'

      get "Letters - #{relation}" do
        let(:relation) { relation }
        let(:id) {
          create(
            :"#{Entity.e_types.keys[0..11].sample}_entity",
            :published,
            letters: create_list(:published_letter, rand(1..4)),
            letters_received: create_list(:published_letter, rand(1..4)),
            letters_sent_to: create_list(:published_letter, rand(1..4)),
            letters_sent: create_list(:published_letter, rand(1..4)),
            letters_sent_from: create_list(:published_letter, rand(1..4))
          ).id
        }

        example_request "GET /entities/:id/letters?relation=#{relation}" do
          expect(status).to eq(200)
        end
      end
    end
  end

  route 'entities/:id/letters', 'GET /entities/:id/letters?relation=mention&page=2&per_page=2' do
    parameter :relation, 'relation'
    parameter :page, 'Page of results.'
    parameter :per_page, 'Number of records per response.'

    get 'Paginated Letters' do
      let(:relation) { 'mention' }
      let(:page) { 2 }
      let(:per_page) { 2 }
      let(:id) {
        create(
          :person_entity,
          :published,
          letters: create_list(:published_letter, 10)
        ).id
      }

      example_request 'GET /entities/:id/letters?relation=:relation&page=:page&per_page=:per_page' do
        expect(status).to eq(200)
      end
    end
  end

  route 'entities/:id/letters',
        'GET /entities/:id/letters?relation=mention&start_date=1963-01-01&end_date=1965-12-30' do
    # Each letter needs to have a random year. Using `create_list` will result is all letters having
    # the same random year.
    before {
      10.times { create(:published_letter, date: Faker::Date.in_date_period(year: rand(1962..1965))) }
    }

    parameter :relation, 'relation'
    parameter :page, 'Page of results.'
    parameter :per_page, 'Number of records per response.'
    parameter :start_date, 'Date filter start.'
    parameter :end_date, 'Date filter end.'

    get 'Letters Filtered by date' do
      let(:relation) { 'mention' }
      let(:start_date) { '1963-01-01' }
      let(:end_date) { '1964-12-30' }
      let(:id) { create(:person_entity, :published, letters: Letter.all).id }

      example_request 'GET /entities/:id/letters?relation=:relation&start_date=:start_date&end_date=:end_date' do
        expect(status).to eq(200)
      end
    end
  end
end
