# frozen_string_literal: true

module Admin
  class LettersController < Admin::ApplicationController
    before_action :original_params, only: %i[index]
    def default_sorting_attribute
      :date
    end

    def default_sorting_direction
      :asc
    end

    def index
      authorize_resource(resource_class)
      search_term = params[:search].to_s.strip
      dates = Letter.all.map(&:date).compact
      Rails.logger.debug { "incoming = #{params}" }
      min_date = dates.min
      max_date = dates.max
      start_date = params.key?(:start_date) ? Date.parse(params[:start_date]) : min_date
      end_date = params.key?(:end_date) ? Date.parse(params[:end_date]) : max_date

      resources = Administrate::Search.new(scoped_resource,
                                           dashboard,
                                           search_term).run
      resources = resources.between(start_date, end_date)
      resources = apply_collection_includes(resources)
      resources = order.apply(resources)
      resources = resources.page(params[:_page]).per(records_per_page)
      page = Administrate::Page::Collection.new(dashboard, order:)

      render locals: {
        resources:,
        search_term:,
        page:,
        show_search_bar: show_search_bar?,
        min_date:,
        max_date:,
        start_date:,
        end_date:
      }
    end

    def edit
      @requested_resource = Letter.includes(
        :entities,
        :recipients,
        :destinations,
        :senders,
        :origins
      ).references(:entities).find(params[:id])

      # @requested_resource = Letter.find(params[:id])
      #                             .mentions.includes(:entity)
      #                             .letter_recipients.includes(:entity)
      #                             .letter_destinations.includes(:entity)
      #                             .letter_senders.includes(:entity)
      #                             .letter_origins.includes(:entity)
      # super
      render locals: {
        page: Administrate::Page::Form.new(dashboard, @requested_resource)
      }
    end

    private

    def search_params
      params.permit(:start_date)
    end

    def original_params
      return if request.referer.nil?

      original_params = Addressable::URI.parse(request.referer).query_values&.compact_blank
      params.reverse_merge!(original_params)
    end
    # min_date: Letter.where.not(date: nil).map(&:date).min,
    # max_date: Letter.where.not(date: nil).map(&:date).max
    # Overwrite any of the RESTful controller actions to implement custom behavior
    # For example, you may want to send an email after a foo is updated.
    #
    # def update
    #   super
    #   send_foo_updated_email(requested_resource)
    # end

    # Override this method to specify custom lookup behavior.
    # This will be used to set the resource for the `show`, `edit`, and `update`
    # actions.
    #
    # def find_resource(param)
    #   Foo.find_by!(slug: param)
    # end

    # The result of this lookup will be available as `requested_resource`

    # Override this if you have certain roles that require a subset
    # this will be used to set the records shown on the `index` action.
    #
    # def scoped_resource
    #   if current_user.super_admin?
    #     resource_class
    #   else
    #     resource_class.with_less_stuff
    #   end
    # end

    # Override `resource_params` if you want to transform the submitted
    # data before it's persisted. For example, the following would turn all
    # empty values into nil values. It uses other APIs such as `resource_class`
    # and `dashboard`:
    #
    # def resource_params
    #   params.require(resource_class.model_name.param_key).
    #     permit(dashboard.permitted_attributes).
    #     transform_values { |value| value == "" ? nil : value }
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
