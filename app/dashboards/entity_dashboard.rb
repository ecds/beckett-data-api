# frozen_string_literal: true

require 'administrate/base_dashboard'

class EntityDashboard < Administrate::BaseDashboard
  include ActionView::Helpers::SanitizeHelper
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
    legacy_pk: Field::Number.with_options(searchable: true),
    alternate_names: Field::List,
    alternate_spellings: Field::List,
    artist: RichTextField,
    artist_alternate_spellings: Field::List,
    attended_with: Field::List,
    authors: Field::List,
    cast: Field::List,
    city: RichTextField,
    composer: RichTextField,
    date: Field::Date,
    date_str: RichTextField,
    description: RichTextField,
    directors: Field::List,
    event_type: Field::Select.with_options(
      searchable: true,
      collection: lambda {|field|
                    field.resource.class.send(field.attribute.to_s.pluralize).keys
                  }
    ),
    first_name: RichTextField.with_options(searchable: true),
    label: RichTextField.with_options(searchable: true),
    last_name: RichTextField.with_options(searchable: true),
    life_dates: RichTextField,
    links: Field::List,
    notes: RichTextField,
    owner_location: RichTextField,
    owner_location_current: RichTextField,
    performed_by: Field::List,
    personnel: Field::List,
    place: RichTextField,
    profile: RichTextField,
    proposal: RichTextField,
    publication_format: RichTextField,
    publication_information: RichTextField,
    reason: RichTextField,
    response: RichTextField,
    theater: RichTextField,
    translated_into: Field::Select.with_options(
      searchable: true,
      collection: lambda {|field|
                    field.resource.class.send(field.attribute.to_s.pluralize).keys
                  }
    ),
    translated_title: RichTextField,
    translators: Field::List,
    flagged: Field::Boolean,
    is_public: Field::Boolean,
    e_type: Field::Select.with_options(
      searchable: true,
      collection: lambda {|field|
                    field.resource.class.send(field.attribute.to_s.pluralize).keys
                  }
    ),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    label_plain: Field::Text.with_options(searchable: true),
    description_plain: Field::Text.with_options(searchable: true),
    lists_plain: Field::Text.with_options(searchable: true),
    years: Field::List
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    legacy_pk
    label
    e_type
    mentions
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    legacy_pk
    e_type
    label
    first_name
    last_name
    life_dates
    event_type
    description
    profile
    authors
    composer
    directors
    artist
    artist_alternate_spellings
    alternate_names
    city
    theater
    place
    date
    date_str
    proposal
    response
    reason
    owner_location
    owner_location_current
    attended_with
    cast
    performed_by
    personnel
    publication_format
    publication_information
    translated_into
    translated_title
    translators
    links
    notes
    alternate_spellings

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
    flagged
    is_public
    created_at
    updated_at
    years
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    label
    description
    profile
    alternate_names
    alternate_spellings
    artist
    artist_alternate_spellings
    attended_with
    authors
    cast
    city
    composer
    date
    date_str
    directors
    e_type
    event_type
    first_name
    last_name
    life_dates
    links
    notes
    owner_location
    owner_location_current
    performed_by
    personnel
    place
    proposal
    publication_format
    publication_information
    reason
    response
    theater
    translated_into
    translated_title
    translators
    years
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
  COLLECTION_FILTERS = {
    type: ->(resources, attr) { resources.public_send(attr) }
  }.freeze

  # Overwrite this method to customize how entities are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(entity)
    "#{entity.e_type.titleize}: #{strip_tags(entity.label)}"
  end
end
