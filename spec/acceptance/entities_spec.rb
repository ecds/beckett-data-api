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

  # route '/entities{page,per_page}', 'Entities Collection' do
  #   parameter :page, 'Current page of entities', { type: 'String', default: '1' }
  #   parameter :per_page, 'Number of entities on a single response.', { default: '25' }
  #   parameter :search, 'Text to search.', { default: '*' }
  #   parameter :type,
  #             "Limit responses by single type. Options are #{Entity.e_types.keys.to_sentence}.",
  #             { default: 'null' }
  #   parameter :operator,
  #             "By default, results match any words in the query. Use 'and' to match all words.",
  #             { default: 'or' }
  # end

  route '/entities/:id', 'Single Entity' do
    Entity.e_types.keys[0..11].each do |type|
      next if type == 'generic'

      get "#{type} Entity" do
        let(:id) {
          create(
            "#{type}_entity".to_sym,
            :published,
            letters_received: create_list(:published_letter, 1),
            letters_sent_to: create_list(:published_letter, 1),
            letters_sent: create_list(:published_letter, 1),
            letters_sent_from: create_list(:published_letter, 1)
          ).id
        }

        # response_field :label, '', { default: 'HTML String', not_null: true }
        # response_field :short_display, '', { default: 'HTML String', not_null: true }
        # response_field :full_display, '', { default: 'HTML String', not_null: true }
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
