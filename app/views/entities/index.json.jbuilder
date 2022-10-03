# frozen_string_literal: true

json.entities do
  json.merge! @entities
end

json.aggs do
  json.merge! @aggs
end

json.meta do
  json.merge! @pagination_meta if @pagination_meta
end
