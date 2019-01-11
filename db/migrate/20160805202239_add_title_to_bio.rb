class AddTitleToBio < ActiveRecord::Migration[5.2]
  def change
    add_column :bios, :title, :string
  end
end
