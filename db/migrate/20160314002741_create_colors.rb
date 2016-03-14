class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :background
      t.string :button
      t.string :circle
      t.integer :project_id

      t.timestamps null: false
    end
    add_index :colors, :project_id
  end
end
