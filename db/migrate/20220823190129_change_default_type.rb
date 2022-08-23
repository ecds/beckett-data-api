class ChangeDefaultType < ActiveRecord::Migration[7.0]
  def change
    change_column_default :entities, :e_type, 12
  end
end
