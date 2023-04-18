class CreateFaqs < ActiveRecord::Migration[7.0]
  def change
    create_table :faqs, id: :uuid do |t|
      t.integer :position
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end
