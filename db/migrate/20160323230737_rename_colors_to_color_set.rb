class RenameColorsToColorSet < ActiveRecord::Migration
  def change
    rename_table :colors, :color_sets
  end
end
