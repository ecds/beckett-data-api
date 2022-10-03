class CreateCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :collections, id: :uuid do |t|
      t.string :label
      t.belongs_to :repository, index: true, foreign_key: true, type: :uuid
      t.string :url
      t.timestamps
    end

    add_reference :repositories, :collection, index: true, foreign_key: true, type: :uuid
  end
end
