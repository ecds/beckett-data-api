class RenameCityToCitiesForEntities < ActiveRecord::Migration[7.0]
  def change
    rename_column :entities, :city, :cities
    change_column :entities, :cities, :string, array: true, using: "(string_to_array(cities, ','))"
  end
end
