# frozen_string_literal: true

# {
#   "@id": "https://example.org/letters/a9935672-b5bf-11ec-b909-0242ac120002",
#   "@type": "Letter",
#   "dateSent": "1960-04-11",
#   "address": {
#     "@context": "http://schema.org",
#     "@type": "Place"
#   },
#   "recipient": {
#     "@context": "http://schema.org",
#     "@type": "Person"
# }
#   "returnAddress": {
#     "@context": "http://schema.org",
#     "@type": "Place"
#   },
#   "physicalDescription": "",
#   "language": "en-IL",
#   "mentions": [
#     {
#       "@context": "http://schema.org",
#       "@type": "Person"
#     },
#     {
#       "@context": "http://schema.org",
#       "@type": "Play"
#     }
#   ],
#   "significantMentions": [],
#   "repository": {
#     "@context": "http://schema.org",
#     "@type": ""
#   },
#   "verified": ""
# }
json.metadata do
  json.set! 'id', "#{request.protocol}#{request.host_with_port}#{letter.url_path}"
  json.set! 'date', letter.date
  json.set! 'label', letter.label
  json.set! 'addressed_from', letter.addressed_from
  json.set! 'addressed_to', letter.addressed_to
  json.set! 'envelope', letter.envelope == 't' ? 'Yes' : 'No'
  json.set! 'postmark', letter.postmark
  json.set! 'physical_description_als', [
    letter.typed ? 'T' : 'A',
    letter.physical_desc,
    letter.signed ? 'S' : 'I'
  ].compact.join(' ')
  json.set! 'physical_description_details', [letter.physical_detail, letter.physical_notes].compact.join(', ')
  json.set! 'postcard_image', letter.postcard_image
  json.set! 'leaves_and_sides', [letter.leaves, letter.sides].join(', ')
  json.set! 'recipient', letter.recipient_list
end

json.repositories do
  if letter.first_repository&.repository&.published
    json.set! 'repository', letter.first_repository.repository&.label
    json.set! 'format', letter.first_repository.repository.label
    json.set! 'collection', letter.letter_repositories.premiere&.first&.collection&.label
    json.set! 'repository_information', letter.repository_info
  end
  if letter.second_repository&.repository&.published
    second_repo = [
      letter.second_repository.repository.label,
      letter.second_repository.format,
      letter.second_repository.collection.label
    ]
    json.set! 'second_repository', second_repo.compact.join(', ')
  end
  if letter.third_repository&.repository&.published
    third_repo = [
      letter.third_repository.repository.label,
      letter.third_repository.format,
      letter.third_repository.collection.label
    ]
    json.set! 'third_repository', third_repo.compact.join(', ')
  end
end

json.set! 'publication_information', letter.publication_information if letter.publication_information.present?

json.recipients do
  letter.recipients.each do |recipient|
    json.child! do
      json.partial! 'entities/entity', entity: recipient, request:
    end
  end
end

json.destinations do
  letter.destinations.each do |destination|
    json.child! do
      json.partial! 'entities/entity', entity: destination, request:
    end
  end
end

# TODO: Ask Ben how he wants mention serialized.
json.mentions do
  Entity.e_types.each_key do |type|
    next if letter.mentions.public_send(type).empty?

    json.set! type.pluralize do
      json.array!(letter.mentions.public_send(type)) do |mention|
        json.partial! 'mentions/mention', mention:, request:
      end
    end
  end
end
