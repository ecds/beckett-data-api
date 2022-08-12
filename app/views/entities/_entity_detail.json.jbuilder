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

json.set! 'id', "#{request.protocol}#{request.host_with_port}#{entity.url_path}"
json.set! 'type', entity.e_type
json.set! 'label', entity.label
json.set! 'clean_label', entity.clean_label
json.set! 'description', entity.description
json.set! 'clean_description', entity.clean_description
entity.allowed_attributes.each do |attribute|
  json.set! attribute, entity.public_send(attribute)
end
