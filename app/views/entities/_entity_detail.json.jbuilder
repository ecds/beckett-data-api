# frozen_string_literal: true

# {
#   "@context": "https://schema.org",
#   "@type": "Person",
#   "name": "Kay Boyle",
#   "birthDate": 1902,
#   "deathDate": 1992,
#   "sameAs": "https://viaf.org/viaf/49222285/#Boyle,_Kay,_1902-1992",
#   "image": "https://upload.wikimedia.org/wikipedia/commons/3/3c/KayBoyle.jpg",
#   "description": "writer, teacher, and activist was born in St Paul, Minnesota....",
#   "url": "https://beckett.emory.edu/resource/a9935672-b5bf-11ec-b909-0242ac120002"
# }

json.set! 'id', entity.id
json.set! 'type', entity.e_type
json.set! 'label', entity.label
json.set! 'short_display', entity.short_display
json.set! 'full_display', entity.full_display

entity.allowed_attributes.each do |attribute|
  json.set! attribute, entity.public_send(attribute)
end

json.letters do
  json.mentioned_in do
    entity.letters.published.each do |letter|
      json.child! do
        json.set! 'id', letter.id
        json.set! 'label', letter.label
      end
    end
  end

  json.recived do
    entity.letters_received.published.each do |letter|
      json.child! do
        json.set! 'id', letter.id
        json.set! 'label', letter.label
      end
    end
  end

  json.sent do
    entity.letters_sent.published.each do |letter|
      json.child! do
        json.set! 'id', letter.id
        json.set! 'label', letter.label
      end
    end
  end

  json.sent_to do
    entity.letters_sent_to.published.each do |letter|
      json.child! do
        json.set! 'id', letter.id
        json.set! 'label', letter.label
      end
    end
  end

  json.sent_from do
    entity.letters_sent_from.published.each do |letter|
      json.child! do
        json.set! 'id', letter.id
        json.set! 'label', letter.label
      end
    end
  end
end

# json.letters do
#   json.merge! entity.published_letters_hash
# end
