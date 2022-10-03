class RemovePorposalFromEntities < ActiveRecord::Migration[7.0]
  def change
    remove_column :entities, :porposal, :string
  end
end
