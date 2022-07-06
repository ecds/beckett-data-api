# frozen_string_literal: true

# Monkey patch to properly display json :(
# https://github.com/zipmark/rspec_api_documentation/issues/456
module RspecApiDocumentation
  class RackTestClient < ClientBase
    def response_body
      if last_response.headers['Content-Type'].include?('json')
        last_response.body.encode('utf-8')
      else
        '[binary data]'
      end
    end
  end
end
