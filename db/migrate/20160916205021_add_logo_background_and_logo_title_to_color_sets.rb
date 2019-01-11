class AddLogoBackgroundAndLogoTitleToColorSets < ActiveRecord::Migration[5.2]
  def change
    add_column :color_sets, :logo_background, :string
    add_column :color_sets, :logo_title, :string
  end
end
