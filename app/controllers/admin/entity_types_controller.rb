# frozen_string_literal: true

module Admin
  class EntityTypesController < Admin::EntitiesController
    def scoped_resource
      Entity.public_send(params[:type])
      # puts params
      # super
    end

    def resource_class
      ActiveSupport::Inflector.constantize('Entity')
    end

    def dashboard_class
      ActiveSupport::Inflector.constantize('EntityDashboard')
    end

    def dashboard
      @dashboard ||= EntityDashboard.new
    end

    def new_resource
      Entity.new(e_type: 'person')
    end

    def model_from_resource()
      resource_name = 'entities'
      dashboard = dashboard_from_resource(resource_name)
      dashboard.try(:model) || resource_name.to_sym
    end

    def dashboard_from_resource(resource_name)
      "#{resource_name.to_s.singularize}_dashboard".classify.constantize
    end

    def resource_resolver
      100.times { puts controller_path }
      @resource_resolver ||=
        Administrate::ResourceResolver.new('admin/entities')
    end
  end
end
