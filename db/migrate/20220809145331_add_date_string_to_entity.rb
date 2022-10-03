class AddDateStringToEntity < ActiveRecord::Migration[7.0]
  def change
    add_column :entities, :date_str, :string
  end
end
