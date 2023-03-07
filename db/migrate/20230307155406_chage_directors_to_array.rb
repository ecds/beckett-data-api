class ChageDirectorsToArray < ActiveRecord::Migration[7.0]
  def change
    add_column :entities, :directors, :string, array: true
  end
end
