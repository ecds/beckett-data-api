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

# case params[:letters]
# when 'mentions'
#   @entity.letters
# when 'destination'
#   @entity.letters_sent_to
# when 'sent'
#   @entity.letters.sent
# when 'origin'
#   @entity.letters.sent_from
# when 'received'
#   @entity.letters_received
# end

json.letters do
  url_base = "#{request.protocol}#{request.host_with_port}/entities/#{@entity.id}/letters?relation="
  json.mention "#{url_base}mention" if @entity.letters.present?
  json.received "#{url_base}received" if @entity.letters_received.present?
  json.sent "#{url_base}sent" if @entity.letters_sent.present?
  json.destination "#{url_base}destination" if @entity.letters_sent_to.present?
  json.origin "#{url_base}origin" if @entity.letters_sent_from.present?
end

# json.letters do
#   json.merge! entity.published_letters_hash
# end
