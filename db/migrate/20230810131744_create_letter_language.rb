class CreateLetterLanguage < ActiveRecord::Migration[7.0]
  def change
    create_table :letter_languages do |t|
      t.belongs_to :letter, type: :uuid
      t.belongs_to :language, type: :uuid
      t.timestamps
    end
  end
end
