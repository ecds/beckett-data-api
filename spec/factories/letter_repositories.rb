# frozen_string_literal: true

FactoryBot.define do
  factory :letter_repository do
    letter
    repository factory: %i[repository published_repository]
    format { Faker::Hipster.word }
    placement { 'premiere' }

    after(:create) do |rl|
      create(:collection, repository: rl.repository, letter_repositories: [rl])
    end
  end
end
