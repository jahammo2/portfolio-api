class CreateBios < ActiveRecord::Migration[5.2]
  def change
    create_table :bios do |t|
      t.text :body
      t.string :email
      t.string :resume
      t.string :phone_number
      t.string :name
      t.string :background_image
      t.string :profile_picture

      t.timestamps null: false
    end
  end
end
