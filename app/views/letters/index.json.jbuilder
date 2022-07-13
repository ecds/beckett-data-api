# frozen_string_literal: true

# json.letters do
#   json.array! @letters do |letter|
#     json.partial! 'letters/letter', letter: letter, request: request
#   end
# end

json.letters do
  json.merge! @letters
end

json.aggs do
  json.merge! @aggs
end

json.meta do
  json.merge! @pagination_meta if @pagination_meta
end
