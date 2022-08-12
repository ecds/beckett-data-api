# frozen_string_literal: true

json.partial! 'entities/entity', entity: mention.entity, request: request
json.set! 'tags', mention.tag_list
