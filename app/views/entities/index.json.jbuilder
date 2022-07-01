# frozen_string_literal: true

json.array! @entities do |entity|
  json.partial! 'entities/entity', entity: entity, request: request
end
