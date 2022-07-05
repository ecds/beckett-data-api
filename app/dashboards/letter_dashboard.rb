# frozen_string_literal: true

require 'administrate/base_dashboard'

class LetterDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    mentions: Field::HasMany,
    entities: Field::HasMany,
    letter_destinations: Field::HasMany,
    destinations: Field::HasMany,
    letter_senders: Field::HasMany,
    senders: Field::HasMany,
    letter_origins: Field::HasMany,
    origins: Field::HasMany,
    letter_recipients: Field::HasMany,
    recipients: Field::HasMany,
    letter_repositories: Field::HasMany,
    repositories: Field::HasMany,
    id: Field::String,
    legacy_pk: Field::Number,
    code: Field::String,
    date: Field::DateTime,
    addressed_to: Field::String,
    addressed_from: Field::String,
    language: Field::Select.with_options(searchable: false, collection: lambda {|field|
                                                                          field.resource.class.send(field.attribute.to_s.pluralize).keys
                                                                        }),
    physical_desc: Field::String,
    physical_detail: Field::String,
    physical_notes: Field::Text,
    repository_info: Field::String,
    postcard_image: Field::String,
    leaves: Field::Number,
    sides: Field::Number,
    postmark: Field::String,
    typed: Field::Boolean,
    signed: Field::Boolean,
    verified: Field::Boolean,
    envelope: Field::String,
    notes: Field::Text,
    content: Field::Text,
    letter_owner_id: Field::String,
    file_folder_id: Field::Number,
    letter_publisher_id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    date
    recipients
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    mentions
    entities
    letter_destinations
    destinations
    letter_senders
    senders
    letter_origins
    origins
    letter_recipients
    recipients
    letter_repositories
    repositories
    id
    legacy_pk
    code
    date
    addressed_to
    addressed_from
    language
    physical_desc
    physical_detail
    physical_notes
    repository_info
    postcard_image
    leaves
    sides
    postmark
    typed
    signed
    verified
    envelope
    notes
    content
    letter_owner_id
    file_folder_id
    letter_publisher_id
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    mentions
    entities
    letter_destinations
    destinations
    letter_senders
    senders
    letter_origins
    origins
    letter_recipients
    recipients
    letter_repositories
    repositories
    legacy_pk
    code
    date
    addressed_to
    addressed_from
    language
    physical_desc
    physical_detail
    physical_notes
    repository_info
    postcard_image
    leaves
    sides
    postmark
    typed
    signed
    verified
    envelope
    notes
    content
    letter_owner_id
    file_folder_id
    letter_publisher_id
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how letters are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(letter)
  #   "Letter ##{letter.id}"
  # end
end
