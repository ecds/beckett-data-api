# frozen_string_literal: true

FactoryBot.define do
  factory :letter do
    date { Faker::Date.between(from: '1950-01-01', to: '1988-12-31') }
    addressed_to { Faker::Address.full_address }
    addressed_from { Faker::Address.full_address }
    physical_desc { Faker::Lorem.paragraph }
    physical_detail { Faker::Hipster.word }
    physical_notes { Faker::Lorem.paragraph }
    repository_info { Faker::Hipster.word }
    postcard_image { Faker::Internet.url(path: "/#{Faker::Hipster.word}.jpg") }
    leaves { Faker::Number.between(from: 1, to: 3) }
    sides { Faker::Number.between(from: 1, to: 3) }
    postmark { "#{Faker::Date.between(from: '1950-01-01', to: '1988-12-31')}, #{Faker::Address.city}" }
    typed { Faker::Boolean.boolean }
    signed { Faker::Boolean.boolean }
    verified { Faker::Boolean.boolean }
    envelope { 'E' }
    notes { Faker::Lorem.paragraph }
    content { Faker::Lorem.paragraph(sentence_count: Faker::Number.between(from: 12, to: 15)) }
    language { %w[english french german].sample }

    factory :public_letter do
      date { Faker::Date.between(from: '1957-01-01', to: '1965-12-31') }
      repositories { create_list(:repository, 1, public: true) }

      factory :public_letter_existing_repos do
        repositories { [Repository.where(public: true).sample, Repository.where(public: true).sample] }
      end
    end

    factory :new_letter do
      date { Faker::Date.between(from: '1966-01-01', to: '1988-12-31') }
      repositories { create_list(:repository, 1, public: true) }
    end

    factory :old_letter do
      date { Faker::Date.between(from: '1944-01-01', to: '1956-12-31') }
      repositories { create_list(:repository, 1, public: true) }
    end
  end
end
