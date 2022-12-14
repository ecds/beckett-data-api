# frozen_string_literal: true

FactoryBot.define do
  factory :letter_repository do
    association :letter, factory: :letter
    association :repository, factory: :published_repository
    # association :collection, factory: :collection
    format { Faker::Hipster.word }
    placement { 'premiere' }

    after(:create) do |rl|
      create(:collection, repository: rl.repository, letter_repositories: [rl])
    end
  end
end
