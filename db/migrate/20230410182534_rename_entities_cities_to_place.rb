class RenameEntitiesCitiesToPlace < ActiveRecord::Migration[7.0]
  def change
    rename_column :entities, :cities, :places
  end
end
