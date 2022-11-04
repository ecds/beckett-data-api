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
    parameter :page, 'Current page of paginated letters response.', { type: 'String', default: '1' }
    parameter :per_page, 'Number of letters on a single response.', { default: '25' }
    parameter :search, 'Text to search.', { default: '*' }
    parameter :fields,
              'Comma seperated list of fields to be queried.',
              { default: 'recipients, mentions, destinations, origins, repositories' }
    parameter :start_date, 'Letters dated on or after given date. Must be in YYYY-MM-DD format.', { default: 'null' }
    parameter :end_date, 'Letters dated on or before given date. Must be in YYYY-MM-DD format.', { default: 'null' }
    parameter :recipients, 'Comma seperated list of recipient labels.', { default: 'null' }
    parameter :destinations, 'Comma seperated list of destination labels', { default: 'null' }
    parameter :origins, 'Comma seperated list of origin labels.', { default: 'null' }
    parameter :senders, 'Comma seperated list of sender labels.', { default: 'null' }
    parameter :repositories, 'Comma seperated list of repository labels.', { default: 'null' }
    parameter :languages,
              'Case insensitive comma seperated list of languages. Options are English, French, German, and Italian.',
              { default: 'null' }
    parameter :volumes,
              'Comma sperated list of volumes. Options are 0, 1, 2, 3, and 4. Zero means no volume.',
              { default: 'null' }

  #   before {
  #     create_list(:repository, 4, published: true)
  #     create_list(:published_letter_existing_repos, 30)
  #     Letter.published.order(:date).limit(25).sample(6).each do |letter|
  #       letter.mentions.shuffle[0..(letter.mentions.count / 3)].each do |mention|
  #         mention.tag_list.add Faker::Movies::HitchhikersGuideToTheGalaxy.planet
  #         mention.save
  #       end
  #     end
  #   }

  #   get 'All letters' do
  #     example_request 'GET /letters - All' do
  #       expect(status).to eq(200)
  #     end
  #   end

  #   get 'letters query' do
  #     let(:search) { LetterRecipient.all.sample.entity.label.split[-1].downcase }
  #     example_request 'GET /letters?search=:search_terms - Keyword search' do
  #       expect(status).to eq(200)
  #     end
  #   end

  #   get 'letters by recipients' do
  #     let(:recipients) { [LetterRecipient.first.entity.label, LetterRecipient.last.entity.label].join(',') }
  #     example_request 'GET /letters?recipients=:recipient_labels - Recipients search' do
  #       expect(status).to eq(200)
  #     end
  #   end

  #   get 'letters by repository' do
  #     let(:repositories) { Repository.all.sample.label }
  #     example_request 'GET /letters?repositories=:repository_labels - Repository Search' do
  #       expect(status).to eq(200)
  #     end
  #   end

  #   get 'letters from start date' do
  #     let(:dates) { Letter.all.map(&:date) }
  #     let(:start_date) { dates[dates.count / 3].strftime('%Y-%m-%d') }
  #     example_request 'GET /letters?start_date=:YYYY-MM-DD - On or After Date' do
  #       expect(status).to eq(200)
  #     end
  #   end

  #   get 'letters before end date' do
  #     let(:dates) { Letter.all.map(&:date) }
  #     let(:end_date) { dates[(dates.count / 2) + 3].strftime('%Y-%m-%d') }
  #     example_request 'GET /letters?end_date=:YYYY-MM-DD - On or Before Date' do
  #       expect(status).to eq(200)
  #     end
  #   end

  #   get 'letters betwen start and end dates' do
  #     let(:dates) { Letter.all.map(&:date) }
  #     let(:start_date) { dates[dates.count / 3].strftime('%Y-%m-%d') }
  #     let(:end_date) { dates[(dates.count / 2) + 3].strftime('%Y-%m-%d') }
  #     example_request 'GET /letters?start_date=:YYYY-MM-DD&end_date=:YYYY-MM-DD - On or Between Dates' do
  #       expect(status).to eq(200)
  #     end
  #   end

  #   # get 'letters by volume' do
  #   #   example_request 'Volume facet' do
  #   #     expect(status).to eq(200)
  #   #   end
  #   # end

  #   get 'letters by language' do
  #     let(:languages) { 'German, italian' }
  #     example_request 'GET /letters?languages=:list_of_languages' do
  #       expect(status).to eq(200)
  #     end
  #   end

  #   get 'letters by volume' do
  #     let(:volumes) { '1, 3' }
  #     example_request 'GET /letters?volumes=:list_of_volumes' do
  #       expect(status).to eq(200)
  #     end
  #   end

  #   get 'Paginated letters' do
  #     let(:page) { 2 }
  #     let(:per_page) { 10 }
  #     example_request 'GET /letters?per_page=:results_per_page&page=:offset - Paginated results' do
  #       expect(status).to eq(200)
  #     end
  #   end
  end

  route '/letters/:id', 'Single Letter' do
    get 'Specific letter' do
      let(:id) { create(:published_letter).id }
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
