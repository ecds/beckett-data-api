require "administrate/base_dashboard"

class EntityDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    mentions: Field::HasMany,
    letters: Field::HasMany,
    letter_destinations: Field::HasMany,
    letters_sent_to: Field::HasMany,
    letter_senders: Field::HasMany,
    letters_sent: Field::HasMany,
    letter_origins: Field::HasMany,
    letters_sent_from: Field::HasMany,
    letter_recipients: Field::HasMany,
    letters_received: Field::HasMany,
    id: Field::String,
    legacy_pk: Field::Number,
    label: RichTextField,
    description: RichTextField,
    properties: Field::JSONB,
    flagged: Field::Boolean,
    is_public: Field::Boolean,
    e_type: Field::Select.with_options(searchable: false, collection: ->(field) { field.resource.class.send(field.attribute.to_s.pluralize).keys }),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    label
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    mentions
    letters
    letter_destinations
    letters_sent_to
    letter_senders
    letters_sent
    letter_origins
    letters_sent_from
    letter_recipients
    letters_received
    id
    legacy_pk
    label
    description
    properties
    flagged
    is_public
    e_type
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    label
    description
    properties
    e_type
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

  # Overwrite this method to customize how entities are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(entity)
    "Entity #{entity.legacy_pk}: #{entity.label}"
  end
end