class AddFilenameToMedium < ActiveRecord::Migration[7.0]
  def change
    add_column :media, :filename, :text
  end
end
