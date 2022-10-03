class CreateLetterDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :letter_destinations do |t|
      t.belongs_to :entity, type: :uuid
      t.belongs_to :letter, type: :uuid

      t.timestamps
    end
  end
end
