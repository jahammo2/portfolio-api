class AddButtonTextAndButtonTextHoverToColorSets < ActiveRecord::Migration
  def change
    add_column :color_sets, :button_text, :string
    add_column :color_sets, :button_hover, :string
  end
end
