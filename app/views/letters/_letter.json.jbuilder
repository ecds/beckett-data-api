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

json.set! 'id', "#{request.protocol}#{request.host}#{letter.url_path}.json"
json.set! 'date', letter.date
# json.set! '@type', letter.schema_type

json.recipients do
  letter.recipients.each do |recipient|
    json.child! do
      json.partial! 'entities/entity', entity: recipient, request: request
    end
  end
end

json.destinations do
  letter.destinations.each do |destination|
    json.child! do
      json.partial! 'entities/entity', entity: destination, request: request
    end
  end
end

json.mentions do
  Entity.e_types.each_key do |type|
    next if letter.mentions.public_send(type).empty?

    json.set! type.pluralize do
      json.array!(letter.mentions.public_send(type)) do |mention|
        json.partial! 'entities/entity', entity: mention.entity, request: request
      end
    end
  end
end
