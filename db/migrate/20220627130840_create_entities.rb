class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities, id: :uuid do |t|
      t.integer :legacy_pk
      t.string :label, null: false, default: ''
      t.text :description
      t.jsonb :properties
      t.boolean :flagged, default: true, null: false
      t.boolean :is_public, default: false, null: false
      t.integer :e_type, default: 0, null: false

      t.timestamps
    end
  end
end
