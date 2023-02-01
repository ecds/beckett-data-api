# frozen_string_literal: true

json.set! 'min_date', @min_date&.strftime('%Y-%m-%d')
json.set! 'max_date', @max_date&.strftime('%Y-%m-%d')
json.set! 'total_pages', @letters.total_pages

json.letters do
  @letters.each do |letter|
    json.child! do
      json.set! 'id', letter.id
      json.set! 'label', letter.label
      json.set! 'recipient', letter.recipients.map(&:label).to_sentence
      json.set! 'repository', letter.repositories.map(&:label).to_sentence
      json.set! 'date', letter.date&.strftime('%d %B %Y')
      next unless @relation == 'mention'

      json.set! 'tags', Mention.find_by(letter:, entity: @entity).tag_list
    end
  end
end
