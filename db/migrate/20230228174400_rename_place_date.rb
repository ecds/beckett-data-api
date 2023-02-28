class RenamePlaceDate < ActiveRecord::Migration[7.0]
  def change
    rename_column :entities, :place_date, :place
  end
end
