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
    legacy_pk: Field::Number,
    alternate_names: Field::List,
    alternate_spellings: Field::List,
    artist: Field::String,
    artist_alternate_spellings: Field::List,
    attended_with: Field::List,
    authors: Field::List,
    cast: Field::List,
    city: Field::String,
    composer: Field::String,
    date: Field::Date,
    description: RichTextField,
    director: Field::String,
    event_type: Field::Select.with_options(searchable: false, collection: lambda {|field|
                                                                            field.resource.class.send(field.attribute.to_s.pluralize).keys
                                                                          }),
    first_name: Field::String,
    label: RichTextField,
    last_name: Field::String,
    life_dates: Field::String,
    links: Field::List,
    notes: RichTextField,
    owner_location_accession_number_contemporaneous: Field::Number,
    owner_location_accession_number_current: Field::Number,
    performed_by: Field::Text,
    personnel: Field::List,
    place_date: Field::String,
    porposal: Field::Text,
    profile: RichTextField,
    proposal: Field::Text,
    publication_format: Field::Text,
    publication_information: Field::Text,
    reason: Field::Text,
    response: Field::Text,
    theater: Field::String,
    translated_into: Field::Select.with_options(searchable: false, collection: lambda {|field|
                                                                                 field.resource.class.send(field.attribute.to_s.pluralize).keys
                                                                               }),
    translated_title: Field::String,
    translators: Field::String,
    flagged: Field::Boolean,
    is_public: Field::Boolean,
    e_type: Field::Select.with_options(searchable: false, collection: lambda {|field|
                                                                        field.resource.class.send(field.attribute.to_s.pluralize).keys
                                                                      }),
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    label
    e_type
    letters
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
    description
    director
    event_type
    first_name
    label
    last_name
    life_dates
    links
    notes
    owner_location_accession_number_contemporaneous
    owner_location_accession_number_current
    performed_by
    personnel
    place_date
    porposal
    profile
    proposal
    publication_format
    publication_information
    reason
    response
    theater
    translated_into
    translated_title
    translators
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
    director
    event_type
    first_name
    last_name
    life_dates
    links
    notes
    owner_location_accession_number_contemporaneous
    owner_location_accession_number_current
    performed_by
    personnel
    place_date
    porposal
    proposal
    publication_format
    publication_information
    reason
    response
    theater
    translated_into
    translated_title
    translators
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
  COLLECTION_FILTERS = {
    type: ->(resources, attr) { resources.public_send(attr) }
  }.freeze

  # Overwrite this method to customize how entities are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(entity)
    "Entity #{entity.legacy_pk}: #{strip_tags(entity.label)}"
  end
end
