class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities, id: :uuid do |t|
      t.integer :legacy_pk
      t.text :alternate_names, array: true
      t.text :alternate_spellings, array: true
      t.string :artist
      t.text :artist_alternate_spellings, array: true
      t.text :attended_with, array: true
      t.text :authors, array: true
      t.text :cast, array: true
      t.string :city
      t.string :composer
      t.date :date
      t.text :description
      t.string :director
      t.integer :event_type, default: 0, null: true
      t.string :first_name
      t.string :label, null: false, default: ''
      t.string :last_name
      t.string :life_dates
      t.text :links, array: true
      t.text :notes
      t.integer :owner_location_accession_number_contemporaneous
      t.integer :owner_location_accession_number_current
      t.text :performed_by, array: true
      t.text :personnel, array: true
      t.string :place_date
      t.text :porposal
      t.text :profile
      t.text :proposal
      t.text :publication_format
      t.text :publication_information
      t.text :reason
      t.text :response
      t.string :theater
      t.integer :translated_into, default: 4, null: true
      t.string :translated_title
      t.text :translators, array: true

      t.boolean :flagged, default: true, null: false
      t.boolean :is_public, default: false, null: false
      t.integer :e_type, default: 3, null: false

      t.timestamps
    end
  end
end
