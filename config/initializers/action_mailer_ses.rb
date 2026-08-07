# frozen_string_literal: true

# Required explicitly rather than relying on autoloading - this initializer can run
# before Zeitwerk has the app/lib root set up.
require Rails.root.join('app/lib/ses_delivery_method')

ActionMailer::Base.add_delivery_method :ses, SesDeliveryMethod
