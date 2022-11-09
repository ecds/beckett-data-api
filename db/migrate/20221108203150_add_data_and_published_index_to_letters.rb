class AddDataAndPublishedIndexToLetters < ActiveRecord::Migration[7.0]
  def change
    add_column :letters, :published, :boolean
    add_index :letters, :date
    add_index :letters, :published
  end
end
