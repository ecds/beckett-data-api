# frozen_string_literal: true

# Admin::ApplicationController gates every admin route behind HTTP Basic Auth,
# hardcoded to test/test in the test environment (see
# app/controllers/admin/application_controller.rb).
module AdminAuthHelper
  def admin_auth_headers
    { 'HTTP_AUTHORIZATION' => ActionController::HttpAuthentication::Basic.encode_credentials('test', 'test') }
  end
end

RSpec.configure do |config|
  config.include AdminAuthHelper, type: :request
end
