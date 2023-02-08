class RemoveImagesFromEntity < ActiveRecord::Migration[7.0]
  def change
    remove_column :entities, :images, :text
  end
end
