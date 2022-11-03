# frozen_string_literal: true

class PublishedEntity < ApplicationRecord
  include EntityCommon
  include Searchable

  self.table_name = 'entities'

  def self.default_scope
    where(published: true)
  end

  def search_data
    attributes = {}
    allowed_attributes.each {|attribute| attributes[attribute] = public_send(attribute) }
    attributes[:alternate_spellings] = alternate_spellings.join(' ') if alternate_spellings?
    attributes[:alternate_names] = alternate_names.join(' ') if alternate_names?
    {
      label:,
      clean_label:,
      description:,
      clean_description:,
      e_type:,
      id_path: url_path,
      short_display:,
      full_display:,
      published:
    }.merge(attributes)
  end

  def should_index?
    published && !generic?
  end
end
