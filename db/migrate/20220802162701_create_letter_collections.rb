class CreateLetterCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :letter_collections do |t|
      t.belongs_to :letter, type: :uuid
      t.belongs_to :collection, type: :uuid
      t.timestamps
    end
  end
end
