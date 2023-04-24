class CreateAboutPages < ActiveRecord::Migration[7.0]
  def change
    create_table :about_pages, id: :uuid do |t|
      t.text :title
      t.text :body

      t.timestamps
    end
  end
end
