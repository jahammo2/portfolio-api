class RemoveCarouselImagesFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :carousel_images, :string
  end
end
