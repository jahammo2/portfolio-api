class AddTitleToBio < ActiveRecord::Migration
  def change
    add_column :bios, :title, :string
  end
end
