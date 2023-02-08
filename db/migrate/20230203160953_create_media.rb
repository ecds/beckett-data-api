class CreateMedia < ActiveRecord::Migration[7.0]
  def change
    create_table :media do |t|
      t.string :link
      t.string :alt_text
      t.string :attribution
      t.string :caption
      t.belongs_to :entity, type: :uuid

      t.timestamps
    end
  end
end
