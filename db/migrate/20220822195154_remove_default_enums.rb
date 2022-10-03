class RemoveDefaultEnums < ActiveRecord::Migration[7.0]
  def change
    change_column_null :entities, :event_type, true
    change_column_null :entities, :translated_into, true
    change_column_default :entities, :event_type, nil
    change_column_default :entities, :translated_into, nil
  end
end
