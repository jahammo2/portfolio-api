class CreateScreenshots < ActiveRecord::Migration[5.2]
  def change
    create_table :screenshots do |t|
      t.text :caption
      t.integer :device_id

      t.timestamps null: false
    end
    add_index :screenshots, :device_id
  end
end
