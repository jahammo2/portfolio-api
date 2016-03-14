class AddCarouselImagesToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :carousel_images, :json
  end
end
