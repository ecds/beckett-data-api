class CreateEventTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :event_types, id: :uuid do |t|
      t.string :label
      t.timestamps
    end

    add_reference :entities, :event_type, index: true, foreign_key: true, type: :uuid

  end
end
