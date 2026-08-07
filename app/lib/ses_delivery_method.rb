# frozen_string_literal: true

# Registered as ActionMailer's :ses delivery method in
# config/initializers/action_mailer_ses.rb. aws-sdk-rails no longer ships an
# ActionMailer/SES integration, so this is a small, direct replacement -
# authenticates via the instance/task's IAM role through the AWS SDK's standard
# credential chain (no explicit access keys configured here).
class SesDeliveryMethod
  def initialize(settings)
    @settings = settings || {}
  end

  def deliver!(mail)
    ses_client.send_raw_email(raw_message: { data: mail.to_s })
  end

  private

  def ses_client
    @ses_client ||= Aws::SES::Client.new(region: @settings.fetch(:region, 'us-east-1'))
  end
end
