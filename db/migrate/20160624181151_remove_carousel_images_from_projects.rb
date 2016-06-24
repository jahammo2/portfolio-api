class RemoveCarouselImagesFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :carousel_images, :string
  end
end
