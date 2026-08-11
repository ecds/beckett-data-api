# frozen_string_literal: true

require 'administrate/field/text'
require 'administrate/engine'

# In-house replacement for the unmaintained administrate-field-acts_as_taggable gem
# (last released 2021, hard-pins `administrate < 1.0.0`). Behavior is ported as-is
# from that gem's lib/administrate/field/acts_as_taggable.rb.
class ActsAsTaggableField < Administrate::Field::Text
  class Engine < ::Rails::Engine
    if defined?(Administrate::Engine)
      Administrate::Engine.add_javascript 'acts_as_taggable_field'
      Administrate::Engine.add_stylesheet 'acts_as_taggable_field'
    end
  end

  def context
    options.fetch(:context, @attribute)
  end

  # Administrate::Field::Base#read_value (called from #initialize, before
  # #attribute is overridden below has a chance to matter) lazily fetches data via
  # `resource.try(attribute)` - and that `attribute` call is polymorphic, so it hits
  # our own override below instead of the raw `:tags` attribute key, fetching
  # `resource.tag_list` (an array of tag-name strings) instead of `resource.tags`
  # (real ActsAsTaggableOn::Tag records). #tags/#delimited/#truncate all expect the
  # latter, so this re-derives the same logic using @attribute (the raw ivar) rather
  # than the overridden #attribute method.
  def read_value(data)
    if options.key?(:getter)
      return options[:getter].respond_to?(:call) ? options[:getter].call(self) : resource.try(options[:getter])
    end

    data.nil? ? resource.try(@attribute) : data
  end

  # acts_as_taggable_on exposes a `<context.singularize>_list` virtual attribute
  # (e.g. `tag_list` for the `:tags` context) for reading/writing a comma-delimited
  # tag string - this field operates on that attribute rather than the raw `tags`
  # association.
  def attribute
    "#{super.to_s.singularize}_list"
  end

  def self.permitted_attribute(attr, **_opts)
    "#{attr.to_s.singularize}_list"
  end

  def tags
    data
  end

  def name
    context.to_s
  end

  def delimited
    tags.join(', ').to_s
  end

  def truncate
    delimited[0...truncation_length]
  end

  def tag_options
    return [] unless defined?(ActsAsTaggableOn::Tag)

    ActsAsTaggableOn::Tag.for_context(context).order(:name).map do |t|
      { text: t.name, value: t.name }
    end
  end
end
