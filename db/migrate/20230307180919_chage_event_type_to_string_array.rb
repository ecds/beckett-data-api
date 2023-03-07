class ChageEventTypeToStringArray < ActiveRecord::Migration[7.0]
  def change
    change_column :entities, :event_types, :string, array: true
  end
end
