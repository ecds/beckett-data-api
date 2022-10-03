# frozen_string_literal: true

require 'administrate/field/base'

class HasManyThroughField < Administrate::Field::HasMany
  def to_s
    data
  end

  def associated_resource_options
    # is_entities = resource['_index']&.include?('entities')
    # where = {}
    # order = {}
    # where[options[:type]] = options[:type] if options[:type]
    # order[options[:order_by]] = :acs if options[:order_by]
    # associated_class.search('*', load: false, order:, where:).map do |resource|
    #   if options[:verbose_option] && is_entities
    #     ["#{resource.e_type.titleize} #{resource.legacy_pk}: #{resource.clean_label}", resource.id]
    #   else
    #     [resource.clean_label, resource.id]
    #   end
    # end
    where = {}
    where[:e_type] = options[:type] if options[:type]
    associated_class.search('*', load: false, order: { e_type: :asc }, where:).map do |resource|
      if options[:verbose_option] && resource['_index'].include?('entities')
        ["#{resource.e_type.titleize} #{resource.legacy_pk}: #{resource.clean_label}", resource.id]
      else
        [resource.clean_label, resource.id]
      end
    end
  end
end
