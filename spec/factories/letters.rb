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
    leaves { rand(1..3) }
    sides { rand(1..3) }
    postmark { "#{Faker::Date.between(from: '1950-01-01', to: '1988-12-31')}, #{Faker::Address.city}" }
    typed { Faker::Boolean.boolean }
    signed { Faker::Boolean.boolean }
    verified { Faker::Boolean.boolean }
    envelope { 'E' }
    notes { Faker::Lorem.paragraph }
    content { Faker::Lorem.paragraph(sentence_count: rand(12..15)) }
    language { %w[english french german italian].sample }
    recipients { create_list(:person_entity, 1) }
    destinations { create_list(:place_entity, 1) }
    origins { create_list(:place_entity, 1) }
    # letter_file { create(:letter_file) }
    letter_owner { create(:letter_owner) }
    letter_publisher { create(:letter_publisher) }
    volume { rand(0..4) }

    after :create do |letter|
      Entity.e_types.keys[0..11].sample(4).each {|type|
        letter.entities << create_list("#{type}_entity".to_sym, rand(1..3))
      }
    end

    factory :published_letter do
      # date { Faker::Date.between(from: '1957-01-01', to: '1965-12-31') }
      repositories { create_list(:repository, 1, published: true) }

      factory :published_letter_existing_repos do
        repositories { [Repository.where(published: true).sample, Repository.where(published: true).sample] }
      end
    end

    factory :unpublished_letter do
      repositories { create_list(:repository, 1, published: false) }
    end

    factory :new_letter do
      date { Faker::Date.between(from: '1966-01-01', to: '1988-12-31') }
      repositories { create_list(:repository, 1, published: true) }
    end

    factory :old_letter do
      date { Faker::Date.between(from: '1944-01-01', to: '1956-12-31') }
      repositories { create_list(:repository, 1, published: true) }
    end
  end
end
