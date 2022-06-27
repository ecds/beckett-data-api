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

ActiveRecord::Schema[7.0].define(version: 2022_06_27_201906) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "entities", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "legacy_pk"
    t.string "label", default: "", null: false
    t.text "description"
    t.jsonb "properties"
    t.boolean "flagged", default: true, null: false
    t.boolean "is_public", default: false, null: false
    t.integer "e_type", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "letter_destinations", force: :cascade do |t|
    t.uuid "entity_id"
    t.uuid "letter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entity_id"], name: "index_letter_destinations_on_entity_id"
    t.index ["letter_id"], name: "index_letter_destinations_on_letter_id"
  end

  create_table "letter_origins", force: :cascade do |t|
    t.uuid "entity_id"
    t.uuid "letter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entity_id"], name: "index_letter_origins_on_entity_id"
    t.index ["letter_id"], name: "index_letter_origins_on_letter_id"
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
    t.boolean "typed", default: true, null: false
    t.boolean "signed", default: false, null: false
    t.boolean "verified", default: false, null: false
    t.string "envelope"
    t.text "notes"
    t.text "content"
    t.uuid "letter_owner_id"
    t.bigint "file_folder_id"
    t.bigint "letter_publisher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
