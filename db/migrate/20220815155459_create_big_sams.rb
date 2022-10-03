class CreateBigSams < ActiveRecord::Migration[7.0]
  def change
    create_table :big_sams do |t|

      t.timestamps
    end
  end
end
