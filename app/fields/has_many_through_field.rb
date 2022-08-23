require "administrate/field/base"

class HasManyThroughField < Administrate::Field::HasMany
  def to_s
    data
  end

  def associated_resource_options

    10.times { puts "^^^^ #{options}" }
    where = {}
    where[:e_type] = options[:type] if options[:type]
    associated_class.search('*', where:).map do |resource|
      [resource.label, resource.id]
    end
  end
end
