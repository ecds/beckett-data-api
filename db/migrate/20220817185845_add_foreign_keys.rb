class AddForeignKeys < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :mentions, :entities
    add_foreign_key :mentions, :letters
    add_foreign_key :letter_senders, :entities
    add_foreign_key :letter_senders, :letters
    add_foreign_key :letter_recipients, :entities
    add_foreign_key :letter_recipients, :letters
    add_foreign_key :letter_destinations, :entities
    add_foreign_key :letter_destinations, :letters
    add_foreign_key :letter_origins, :entities
    add_foreign_key :letter_origins, :letters
    add_foreign_key :letter_repositories, :repositories
    add_foreign_key :letter_repositories, :letters
    add_foreign_key :letter_collections, :collections
    add_foreign_key :letter_collections, :letters
  end
end
