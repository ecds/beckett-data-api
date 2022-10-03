class CreateFileFolders < ActiveRecord::Migration[7.0]
  def change
    create_table :file_folders, id: :uuid do |t|
      t.text :label
      t.timestamps
    end

    add_reference :letters, :file_folder, index: true, foreign_key: true, type: :uuid

  end
end
