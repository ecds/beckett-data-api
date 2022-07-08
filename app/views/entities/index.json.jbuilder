# frozen_string_literal: true

# @entities.as_json.each do |entity|
#   # json.partial! 'entities/entity', entity: entity, request: request
#   # puts entity[:id_path]
#   # json.id 'entity[:id_path]'
#   # puts entity.keys
#   json.id entity[:id_path]
# end

json.entities do
  json.merge! @entities
end

json.aggs do
  json.merge! @aggs
end

json.meta do
  json.merge! @pagination_meta if @pagination_meta
end
