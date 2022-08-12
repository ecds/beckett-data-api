class CreateLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :languages, id: :uuid do |t|
      t.string :label
      t.string :code
      t.timestamps
    end
  end
end
