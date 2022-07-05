# frozen_string_literal: true

json.letters do
  json.array! @letters do |letter|
    json.partial! 'letters/letter', letter: letter, request: request
  end
end

json.aggs do
  json.merge! @letters.aggs
end

json.meta do
  json.merge! @pagination_meta if @pagination_meta
end
