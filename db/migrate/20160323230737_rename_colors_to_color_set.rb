class RenameColorsToColorSet < ActiveRecord::Migration[5.2]
  def change
    rename_table :colors, :color_sets
  end
end
