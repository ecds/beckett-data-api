class MoreLists < ActiveRecord::Migration[7.0]
  def change
    add_column :entities, :composers, :text, array: true
    add_column :entities, :artists, :text, array: true
  end
end
