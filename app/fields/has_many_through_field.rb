# frozen_string_literal: true

require 'administrate/field/base'

class HasManyThroughField < Administrate::Field::HasMany
  def to_s
    data
  end

  def associated_resource_options
    where = {}
    where[:e_type] = options[:type] if options[:type]

    # Sorting here in Ruby, rather than passing `order:` to .search, is deliberate:
    # an ES-level sort requires the field to have a keyword/sortable mapping, which
    # e_type doesn't (Searchable, app/models/concerns/searchable.rb, never declares
    # one) - that was raising a Searchkick::InvalidQueryError for every letter's
    # entity picker (order: { e_type: :asc } was hardcoded here regardless of the
    # order_by option below actually being requested).
    results = associated_class.search('*', load: false, where:)
    results = results.sort_by {|resource| resource.public_send(options[:order_by]).to_s } if options[:order_by]

    results.map do |resource|
      if options[:verbose_option] && resource['_index'].include?('entities')
        ["#{resource.e_type.titleize} #{resource.legacy_pk}: #{resource.clean_label}", resource.id]
      else
        [resource.clean_label, resource.id]
      end
    end
  end
end
