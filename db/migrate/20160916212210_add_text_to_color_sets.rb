class AddTextToColorSets < ActiveRecord::Migration
  def change
    add_column :color_sets, :text, :string
  end
end
