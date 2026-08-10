# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FaqDashboard do
  it_behaves_like 'a dashboard with display_resource',
                  factory: :faq,
                  expected: ->(faq) { "Faq ##{faq.question}" }
end
