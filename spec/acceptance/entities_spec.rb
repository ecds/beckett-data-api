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
    parameter :label, 'Clean label (no HTML) of entity', { default: 'null' }

    before {
      Entity.e_types.keys[0..11].each do |type|
        create_list("#{type}_entity".to_sym, rand(3..5), :published)
      end
    }

    get 'All entities' do
      example_request 'GET /entities - All' do
        explanation 'Returns a paginated list of all entities.'
        expect(status).to eq(200)
      end
    end

    get 'entities by type' do
      let(:type) { Entity.e_types.keys[0..11].sample }
      example_request 'GET /entities?type=:entity_type - By Type' do
        explanation "Returns a paginated list of entities by type. Valid types are #{Entity.e_types.keys.to_sentence}."
        expect(status).to eq(200)
      end
    end

    get 'entities query' do
      let(:search) { Entity.all.sample.clean_description.split.sample.downcase }
      example_request 'GET /entities?search=:search_terms - Keyword Search' do
        explanation 'Returns a paginated list of entities from key word search.'
        expect(status).to eq(200)
      end
    end

    get 'people by name' do
      let(:search) { Entity.person.sample.clean_label }
      let(:fields) { %i[label] }
      let(:type) { 'person' }
      example_request 'GET /entities?search=:label&fields=label&type=person - Person by Label' do
        expect(status).to eq(200)
      end
    end

    get 'paginated results' do
      let(:per_page) { 5 }
      let(:page) { 2 }
      example_request 'GET /entites?per_page=:results_per_page&page=:offset - Paginated results' do
        expect(status).to eq(200)
      end
    end
  end

  route '/entities/:id', 'Single Entity' do
    get 'Specific entity' do
      let(:id) { create(:person_entity, :published).id }
      example_request 'GET /entities/:id' do
        expect(status).to eq(200)
      end
    end

    Entity.e_types.keys[0..11].each do |type|
      get "#{type} Entity" do
        let(:id) { create("#{type}_entity".to_sym, :published).id }

        response_field :label, '', { default: 'HTML String', not_null: true }
        response_field :short_display, '', { default: 'HTML String', not_null: true }
        response_field :full_display, '', { default: 'HTML String', not_null: true }
        # response_field :clean_label, '', { default: 'String', not_null: true }
        # response_field :description, '', { default: 'HTML String', not_null: true }
        # response_field :clean_description, '', { default: 'String', not_null: true }
        # response_field :display_header, '', { default: 'HTML String', not_null: true }
        # response_field :clean_description, 'Same as description with HTML removed.'

        # Entity.new(e_type: type).allowed_attributes.each do |attribute|
        #   default = list_attributes.include?(attribute) ? 'Array' : 'HTML String'

        #   response_field attribute.to_sym, '', { default:, not_null: false }
        # end

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
      let(:id) { create(:place_entity).id }

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

    before { create_list(:person_entity, 50, :published) }

    get 'GET /entities/autocomplete' do
      let(:search) { Entity.all.sample.clean_label[0..1].downcase }

      example_request 'GET /entities/autocomplete?search=:fragment' do
        explanation 'Returns a list of no more than ten entity lables that start with the search parameter.
                    a type parameter can also be passed to limit the results by types. Results might include HTML.'
        expect(status).to eq(200)
      end
    end
  end
end
