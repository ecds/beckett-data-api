class AddPlainTextFieldsToEntities < ActiveRecord::Migration[7.0]
  def change
    add_column :entities, :label_plain, :text
    add_column :entities, :description_plain, :text
    add_column :entities, :lists_plain, :text
  end
end
