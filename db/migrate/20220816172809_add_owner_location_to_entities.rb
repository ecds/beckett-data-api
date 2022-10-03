class AddOwnerLocationToEntities < ActiveRecord::Migration[7.0]
  def change
    add_column :entities, :owner_location, :text
    add_column :entities, :owner_location_current, :text
    remove_column :entities, :owner_location_accession_number_contemporaneous
    remove_column :entities, :owner_location_accession_number_current
  end
end
