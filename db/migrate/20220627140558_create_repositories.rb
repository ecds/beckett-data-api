class CreateRepositories < ActiveRecord::Migration[7.0]
  def change
    create_table :repositories, id: :uuid do |t|
      t.boolean :public, default: false, null: false

      t.timestamps
    end
  end
end
