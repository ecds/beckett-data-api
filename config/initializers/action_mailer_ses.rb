# frozen_string_literal: true

# Required explicitly rather than relying on autoloading - this initializer can run
# before Zeitwerk has the app/lib root set up.
require Rails.root.join('app/lib/ses_delivery_method')

# Passed here, as add_delivery_method's default_options, rather than via
# config.action_mailer.ses_settings in config/environments/*.rb: referencing
# ActionMailer::Base below is what triggers its first load in this app, and Rails
# applies config.action_mailer.* settings via a load hook that fires on that same
# first load - so a `ses_settings=` assigned in production.rb would run before this
# add_delivery_method call has defined that setter, raising NoMethodError.
ActionMailer::Base.add_delivery_method :ses, SesDeliveryMethod, region: ENV.fetch('AWS_REGION', 'us-east-1')
