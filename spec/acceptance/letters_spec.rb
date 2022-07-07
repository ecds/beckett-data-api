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
    parameter :per_page, 'Number of letters on a single response.', { default: '25' }
    parameter :q, 'Text to search.', { default: '*' }
    parameter :fields, 'Comma seperated list of fields to be queried.', { default: 'recipients,mentions,destinations,origins,repositories' }
    parameter :start_date, 'Letters dated on or after given date. Must be in YYYY-MM-DD format.', { default: 'nil' }
    parameter :end_date, 'Letters dated on or before given date. Must be in YYYY-MM-DD format.', { default: 'nil' }
    parameter :recipients, 'Comma seperated list of recipient labels', { default: 'nil' }
    parameter :destinations, 'Comma seperated list of destination labels', { default: 'nil' }
    parameter :origins, 'Comma seperated list of origin labels', { default: 'nil' }
    parameter :senders, 'Comma seperated list of sender labels', { default: 'nil' }
    parameter :repositories, 'Comma seperated list of repository labels', { default: 'nil' }
    parameter :languages, 'Comma seperated list of languages. Options are English, French, German, or Italian', { default: 'nil' }

    before {
      create_list(:repository, 4, public: true)
      create_list(:public_letter_existing_repos, 50)
    }

    get 'All letters' do
      example_request 'All Letters' do
        expect(status).to eq(200)
      end
    end

    get 'letters query' do
      let(:q) { LetterRecipient.all.sample.entity.label.split[-1].downcase }
      example_request 'Keyword search' do
        expect(status).to eq(200)
      end
    end

    get 'letters by recipients' do
      let(:recipients) { [LetterRecipient.first.entity.label, LetterRecipient.last.entity.label].join(',') }
      example_request 'Name search' do
        expect(status).to eq(200)
      end
    end

    get 'letters by repository' do
      let(:repositories) { Repository.all.sample.label }
      example_request 'Repository search' do
        expect(status).to eq(200)
      end
    end

    get 'letters from start date' do
      let(:dates) { Letter.all.map(&:date) }
      let(:start_date) { dates[dates.count / 3].strftime('%Y-%m-%d') }
      example_request 'Date filter - start_date' do
        expect(status).to eq(200)
      end
    end

    get 'letters before end date' do
      let(:dates) { Letter.all.map(&:date) }
      let(:end_date) { dates[(dates.count / 2) + 3].strftime('%Y-%m-%d') }
      example_request 'Date filter - end_date' do
        expect(status).to eq(200)
      end
    end

    get 'letters betwen start and end dates' do
      let(:dates) { Letter.all.map(&:date) }
      let(:start_date) { dates[dates.count / 3].strftime('%Y-%m-%d') }
      let(:end_date) { dates[(dates.count / 2) + 3].strftime('%Y-%m-%d') }
      example_request 'Date filter start_date and end_date' do
        expect(status).to eq(200)
      end
    end

    # get 'letters by volume' do
    #   example_request 'Volume facet' do
    #     expect(status).to eq(200)
    #   end
    # end

    get 'letters by language' do
      let(:languages) { 'German, italian' }
      example_request 'Language facet' do
        expect(status).to eq(200)
      end
    end

    get 'Paginated letters' do
      let(:page) { 2 }
      let(:per_page) { 10 }
      example_request 'Paginated Letters' do
        expect(status).to eq(200)
      end
    end
  end

  route '/letters/:id', 'Single Letter' do
    get 'Specific letter' do
      let(:id) { create(:public_letter).id }
      example_request 'GET /letters/:id' do
        expect(status).to eq(200)
      end
    end
  end

  route '/letters', 'POST /letters' do
    post 'Add a letter' do
      let(:request) { { letter: {} } }

      example 'POST /letters' do
        do_request(request)
        expect(status).to eq(501)
      end
    end
  end

  # Requests on a single letter.
  route '/letters/:id', 'Single Letter' do
    put 'Update a specific letter' do
      let(:id) { create(:letter).id }

      example_request 'PUT /letters/:id' do
        expect(status).to eq(501)
      end
    end

    delete 'Deletes a specific letter' do
      let(:id) { create(:letter).id }

      example_request 'DELETE /letters/:id' do
        expect(status).to eq(501)
      end
    end
  end
end
