class AddYearToEntity < ActiveRecord::Migration[7.0]
  def change
    add_column :entities, :year, :integer
  end
end
