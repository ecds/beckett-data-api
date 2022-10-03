class CreateMentions < ActiveRecord::Migration[7.0]
  def change
    create_table :mentions do |t|
      t.belongs_to :entity, type: :uuid
      t.belongs_to :letter, type: :uuid

      t.timestamps
    end
  end
end
