class CreateLetters < ActiveRecord::Migration[7.0]
  def change
    create_table :letters, id: :uuid do |t|
      t.integer :legacy_pk
      t.string :code
      t.datetime :date
      t.string :addressed_to
      t.string :addressed_from
      t.integer :language, default: 0, null: false
      t.string :physical_desc
      t.string :physical_detail
      t.text :physical_notes
      t.string :repository_info
      t.string :postcard_image
      t.integer :leaves
      t.integer :sides
      t.string :postmark
      t.boolean :typed, default: true, null: false
      t.boolean :signed, default: false, null: false
      t.boolean :verified, default: false, null: false
      t.string :envelope
      t.text :notes
      t.text :content
      t.uuid :letter_owner_id
      t.bigint :file_folder_id
      t.bigint :letter_publisher_id

      t.timestamps
    end
  end
end
