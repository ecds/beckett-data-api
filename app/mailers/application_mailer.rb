# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'noreply@ecds.io'
  layout 'mailer'
end
