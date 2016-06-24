class AddFeaturedToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :featured, :boolean
  end
end
