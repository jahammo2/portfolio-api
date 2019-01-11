class AddFeaturedToDevices < ActiveRecord::Migration[5.2]
  def change
    add_column :devices, :featured, :boolean
  end
end
