# frozen_string_literal: true

module Admin
  class AboutPagesController < Admin::ApplicationController
    def valid_action?(name, resource = resource_class)
      %w[destroy add new create].exclude?(name.to_s) && super
    end
  end
end
