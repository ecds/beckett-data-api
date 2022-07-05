# frozen_string_literal: true

require 'acceptance_helper'

# Documentation refers to the Letter model
resource 'Letters' do
  # Headers that will be sent in every request.
  header 'Accept', 'application/json'
  header 'Content-Type', 'application/json'

  # Describe URL and parameters for a letters list request.
  # As a second parameter we pass request description.
  # REST APIs requests may have the same paths, but differ by HTTP method,
  # we extract a path to a parent block, so descendant blocks can describe each method
  route '/letters{page,per_page}', 'Letters Collection' do
    # List of optional parameters with description for request
    parameter :page, 'Current page of letters', { type: 'String', default: '1' }
    parameter :per_page, 'Number of letters on a single page', { default: '25' }
    parameter :q, 'Query string', { default: '*' }
    parameter :fields, 'List of ields to include in search', { default: 'recipients,mentions,repositories' }

    let(:per_page) { 25 }
    let(:page) { 1 }
    let(:q) { '*' }
    let(:fields) { 'recipients, mentions' }
    # Testing GET /letters request.
    get 'Returns all letters' do
      # Creation of some test data.
      let!(:repositories) { create_list(:repository, 4, public: true) }
      let!(:public_letters) { create_list(:public_letter_existing_repos, 50) }

      # Let’s test two cases:
      context 'without page params' do
        # This block plays role of ‘it’ block from RSpec - the test scenario starts here,
        # example_request makes request defined by ancestor blocks (GET /letters) implicitly, so we don’t have to call do_request method
        example_request 'All letters' do
          expect(
            JSON.parse(response_body)['letters'].count
          ).to eq(
            per_page
          )
          expect(status).to eq(200)
        end
      end
    end
  end

  route '/letters', 'Creation of letter' do
    post 'Add a letter' do
      let(:request) { { letter: {} } }

      context 'with an invalid brand' do
        example 'Creating a letter not implemented' do
          do_request(request)
          expect(status).to eq(501)
        end
      end
    end
  end

  # Requests on a single letter.
  route '/letters/:id', 'Single Letter' do
    # Options :type and :example are self-explanatory.
    # parameter :id, 'Letter id', required: true, type: 'string', :example => '1'

    put 'Deletes a specific letter' do
      let(:id) { create(:letter).id }

      # Here again, we calling request in an implicit manner.
      # The :id parameter is fetched from the let statement.
      example_request 'Updating a letter not implemented' do
        expect(status).to eq(501)
        # expect(response_body).to eq('')
        # expect(Letter.any?).to eq false
      end
    end

    delete 'Deletes a specific letter' do
      let(:id) { create(:letter).id }

      # Here again, we calling request in an implicit manner.
      # The :id parameter is fetched from the let statement.
      example_request 'Deleting a letter not implemented' do
        expect(status).to eq(501)
        # expect(response_body).to eq('')
        # expect(Letter.any?).to eq false
      end
    end
  end
end
