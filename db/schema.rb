# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_12_124158) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "collections", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "label"
    t.uuid "repository_id"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["repository_id"], name: "index_collections_on_repository_id"
  end

  create_table "entities", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "legacy_pk"
    t.text "alternate_names", array: true
    t.text "alternate_spellings", array: true
    t.string "artist"
    t.text "artist_alternate_spellings", array: true
    t.text "attended_with", array: true
    t.text "authors", array: true
    t.text "cast", array: true
    t.string "city"
    t.string "composer"
    t.date "date"
    t.text "description"
    t.string "director"
    t.integer "event_type", default: 0
    t.string "first_name"
    t.string "label", default: "", null: false
    t.string "last_name"
    t.string "life_dates"
    t.text "links", array: true
    t.text "notes"
    t.integer "owner_location_accession_number_contemporaneous"
    t.integer "owner_location_accession_number_current"
    t.text "performed_by", array: true
    t.text "personnel", array: true
    t.string "place_date"
    t.text "porposal"
    t.text "profile"
    t.text "proposal"
    t.text "publication_format"
    t.text "publication_information"
    t.text "reason"
    t.text "response"
    t.string "theater"
    t.integer "translated_into", default: 4
    t.string "translated_title"
    t.text "translators", array: true
    t.boolean "flagged", default: true, null: false
    t.boolean "is_public", default: false, null: false
    t.integer "e_type", default: 3, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "date_str"
    t.uuid "event_type_id"
    t.index ["event_type_id"], name: "index_entities_on_event_type_id"
  end

  create_table "event_types", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "file_folders", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "label"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "letter_collections", force: :cascade do |t|
    t.uuid "letter_id"
    t.uuid "collection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collection_id"], name: "index_letter_collections_on_collection_id"
    t.index ["letter_id"], name: "index_letter_collections_on_letter_id"
  end

  create_table "letter_destinations", force: :cascade do |t|
    t.uuid "entity_id"
    t.uuid "letter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entity_id"], name: "index_letter_destinations_on_entity_id"
    t.index ["letter_id"], name: "index_letter_destinations_on_letter_id"
  end

  create_table "letter_files", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "letter_origins", force: :cascade do |t|
    t.uuid "entity_id"
    t.uuid "letter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entity_id"], name: "index_letter_origins_on_entity_id"
    t.index ["letter_id"], name: "index_letter_origins_on_letter_id"
  end

  create_table "letter_owners", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "letter_publishers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "letter_recipients", force: :cascade do |t|
    t.uuid "entity_id"
    t.uuid "letter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entity_id"], name: "index_letter_recipients_on_entity_id"
    t.index ["letter_id"], name: "index_letter_recipients_on_letter_id"
  end

  create_table "letter_repositories", force: :cascade do |t|
    t.uuid "letter_id"
    t.uuid "repository_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["letter_id"], name: "index_letter_repositories_on_letter_id"
    t.index ["repository_id"], name: "index_letter_repositories_on_repository_id"
  end

  create_table "letter_senders", force: :cascade do |t|
    t.uuid "entity_id"
    t.uuid "letter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entity_id"], name: "index_letter_senders_on_entity_id"
    t.index ["letter_id"], name: "index_letter_senders_on_letter_id"
  end

  create_table "letters", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "legacy_pk"
    t.string "code"
    t.datetime "date"
    t.string "addressed_to"
    t.string "addressed_from"
    t.integer "language", default: 0, null: false
    t.string "physical_desc"
    t.string "physical_detail"
    t.text "physical_notes"
    t.string "repository_info"
    t.string "postcard_image"
    t.integer "leaves"
    t.integer "sides"
    t.string "postmark"
    t.string "volume_pages"
    t.boolean "typed", default: true, null: false
    t.boolean "signed", default: false, null: false
    t.boolean "verified", default: false, null: false
    t.string "envelope"
    t.text "notes"
    t.text "content"
    t.uuid "letter_file_id"
    t.uuid "letter_publisher_id"
    t.uuid "letter_owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "file_folder_id"
    t.index ["file_folder_id"], name: "index_letters_on_file_folder_id"
    t.index ["letter_file_id"], name: "index_letters_on_letter_file_id"
    t.index ["letter_owner_id"], name: "index_letters_on_letter_owner_id"
    t.index ["letter_publisher_id"], name: "index_letters_on_letter_publisher_id"
  end

  create_table "mentions", force: :cascade do |t|
    t.uuid "entity_id"
    t.uuid "letter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entity_id"], name: "index_mentions_on_entity_id"
    t.index ["letter_id"], name: "index_mentions_on_letter_id"
  end

  create_table "repositories", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.boolean "public", default: false, null: false
    t.string "label", null: false
    t.boolean "american", default: false
    t.string "format"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "collection_id"
    t.index ["collection_id"], name: "index_repositories_on_collection_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.bigint "tag_id"
    t.string "taggable_type"
    t.bigint "taggable_id"
    t.string "tagger_type"
    t.bigint "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at", precision: nil
    t.string "tenant", limit: 128
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "taggings_taggable_context_idx"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type", "taggable_id"], name: "index_taggings_on_taggable_type_and_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
    t.index ["tagger_type", "tagger_id"], name: "index_taggings_on_tagger_type_and_tagger_id"
    t.index ["tenant"], name: "index_taggings_on_tenant"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  add_foreign_key "collections", "repositories"
  add_foreign_key "entities", "event_types"
  add_foreign_key "letters", "file_folders"
  add_foreign_key "repositories", "collections"
  add_foreign_key "taggings", "tags"
end
