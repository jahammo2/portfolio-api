class AddToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :opening_body, :text
    add_column :projects, :closing_body, :text
    remove_column :projects, :body, :text
  end
end
