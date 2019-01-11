class AddHeaderImageToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :header_image, :string
  end
end
