class AddVolumeNumberToLetters < ActiveRecord::Migration[7.0]
  def change
    add_column :letters, :volume, :integer
  end
end
