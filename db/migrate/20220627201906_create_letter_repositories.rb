class CreateLetterRepositories < ActiveRecord::Migration[7.0]
  def change
    create_table :letter_repositories do |t|
      t.belongs_to :letter, type: :uuid
      t.belongs_to :repository, type: :uuid

      t.timestamps
    end
  end
end
