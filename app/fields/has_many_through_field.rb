# frozen_string_literal: true

require 'administrate/field/base'

class HasManyThroughField < Administrate::Field::HasMany
  def to_s
    data
  end

  def associated_resource_options
    where = {}
    where[:e_type] = options[:type] if options[:type]
    associated_class.search('*', load: false, where:).map do |resource|
      if options[:verbose_option] && resource['_index'].include?('entities')
        ["#{resource.e_type.titleize} #{resource.legacy_pk}: #{resource.clean_label}", resource.id]
      else
        [resource.clean_label, resource.id]
      end
    end
  end
end
