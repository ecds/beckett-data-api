class AddCountriesToEntities < ActiveRecord::Migration[7.0]
  def change
    add_column :entities, :countries, :string, array: true
  end
end
