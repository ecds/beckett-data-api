# frozen_string_literal: true

namespace :update_records do
  task update_all: :environment do
    Letter.all.each do |letter|
      letter.save
    rescue StandardError
    end

    Entity.all.each do |entity|
      entity.save
    rescue StandardError
    end

    Entity.where(published: false).each do |entity|
      PublishedEntity.searchkick_index.remove(entity)
    end

    Letter.where(published: false).each do |letter|
      PublishedLetter.searchkick_index.remove(letter)
    end
  end
end
