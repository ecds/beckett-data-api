class CreateLetters < ActiveRecord::Migration[7.0]
  def change
    create_table :letter_publishers, id: :uuid do |t|
      t.string :label
      t.timestamps
    end

    create_table :letter_owners, id: :uuid do |t|
      t.string :label
      t.timestamps
    end

    create_table :letter_files, id: :uuid do |t|
      t.string :label
      t.timestamps
    end

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
      t.string :volume_pages
      t.boolean :typed, default: true, null: false
      t.boolean :signed, default: false, null: false
      t.boolean :verified, default: false, null: false
      t.string :envelope
      t.text :notes
      t.text :content
      t.belongs_to :letter_file, type: :uuid, null: true
      t.belongs_to :letter_publisher, type: :uuid, null: true
      t.belongs_to :letter_owner, type: :uuid, null: true

      t.timestamps
    end
  end
end
