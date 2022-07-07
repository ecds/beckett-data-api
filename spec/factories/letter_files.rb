FactoryBot.define do
  factory :letter_file do
    label { Faker::Music::Prince.song }
  end
end
