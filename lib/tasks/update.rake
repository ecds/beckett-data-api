# frozen_string_literal: true

namespace :update_records do
  task update_all: :environment do
    Letter.find_each do |letter|
      letter.save
    rescue StandardError
    end

    Entity.find_each do |entity|
      entity.save
    rescue StandardError
    end

    Entity.where(published: false).find_each do |entity|
      PublishedEntity.searchkick_index.remove(entity)
    end

    Letter.where(published: false).find_each do |letter|
      PublishedLetter.searchkick_index.remove(letter)
    end
  end
end
