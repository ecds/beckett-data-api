class AddYearsToEntity < ActiveRecord::Migration[7.0]
  def change
    add_column :entities, :years, :integer, array: true
    remove_column :entities, :year, :integer
  end
end
