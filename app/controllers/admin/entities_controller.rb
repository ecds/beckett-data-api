# frozen_string_literal: true

module Admin
  class EntitiesController < Admin::ApplicationController

    # def scoped_resource
    #   Entity.person
    # end

    # def index
    #   scoped_resource = Entity.music
    #   super
    #   # authorize_resource(resource_class)
    #   # search_term = params[:search].to_s.strip
    #   # # resources = filter_resources(Entity.person, search_term: search_term)
    #   # resources = apply_collection_includes(Entity.person)
    #   # resources = order.apply(resources)
    #   # resources = resources.page(params[:_page]).per(records_per_page)
    #   # page = Administrate::Page::Collection.new(dashboard, order: order)

    #   # render locals: {
    #   #   resources: resources,
    #   #   search_term: search_term,
    #   #   page: page,
    #   #   show_search_bar: show_search_bar?,
    #   # }
    # end
    # Overwrite any of the RESTful controller actions to implement custom behavior
    # For example, you may want to send an email after a foo is updated.
    #
    def update
      requested_resource.properties = JSON.parse(params[:entity].delete(:properties)).with_indifferent_access
      super
      # send_foo_updated_email(requested_resource)
    end

    def create
      params[:entity][:properties] = JSON.parse(params[:entity][:properties]).with_indifferent_access
      super
    end

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

    private

    def entity_params
      params.require(:entity).permit(:description, :properties)
    end
  end
end
