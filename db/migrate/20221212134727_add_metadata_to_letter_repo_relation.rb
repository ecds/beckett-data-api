class AddMetadataToLetterRepoRelation < ActiveRecord::Migration[7.0]
  def change
    add_column :letter_repositories, :placement, :integer, default: 1
    add_column :letter_repositories, :format, :string
    add_reference :letter_repositories, :collection, foreign_key: true, type: :uuid
  end
end
