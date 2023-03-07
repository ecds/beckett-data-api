class ChageEventTypeToArray < ActiveRecord::Migration[7.0]
  def change
    add_column :entities, :event_types, :integer, array: true
  end
end
