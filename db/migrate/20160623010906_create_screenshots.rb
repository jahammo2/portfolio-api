class CreateScreenshots < ActiveRecord::Migration
  def change
    create_table :screenshots do |t|
      t.text :caption
      t.integer :device_id

      t.timestamps null: false
    end
    add_index :screenshots, :device_id
  end
end
