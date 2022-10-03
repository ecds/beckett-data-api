class AddPublishedToEntities < ActiveRecord::Migration[7.0]
  def change
    add_column :entities, :published, :boolean
    rename_column :repositories, :public, :published
  end
end
