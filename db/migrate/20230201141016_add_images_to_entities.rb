class AddImagesToEntities < ActiveRecord::Migration[7.0]
  def change
    add_column :entities, :images, :text, array: true
  end
end
