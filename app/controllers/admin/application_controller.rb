# frozen_string_literal: true

# All Administrate controllers inherit from this
# `Administrate::ApplicationController`, making it the ideal place to put
# authentication logic or other before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    # include Administrate::Punditize

    before_action :authenticate_admin

    http_basic_authenticate_with(
      name: Rails.application.credentials.dig(:basic_auth, :name),
      password: Rails.application.credentials.dig(:basic_auth, :pass)
    )

    def authenticate_admin
      # TODO: Add authentication logic here.
      true
    end

    private

    def records_per_page
      params[:per_page] || 100
    end

    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end
  end
end
