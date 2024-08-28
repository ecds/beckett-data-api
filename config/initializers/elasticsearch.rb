# frozen_string_literal: true

require 'searchkick'

timeout = 10

case ENV.fetch('RAILS_ENV', nil)
when 'production'
  SearchKick.client = Elasticsearch::Client.new(
    host: 'https://search.ecds.io',
    api_key: 'SGw4a21aRUJGTGpFWTRVbEVFREk6bnZRQU9JblFTdWEwYkpuaW02X2Z3UQ==',
    transport_options: { request: { timeout: }, headers: { content_type: 'application/json' } },
    retry_on_failure: 2
  )

else
  Searchkick.client = Elasticsearch::Client.new(
    host: 'localhost',
    transport_options: { request: { timeout: }, headers: { content_type: 'application/json' } }
  )
end
