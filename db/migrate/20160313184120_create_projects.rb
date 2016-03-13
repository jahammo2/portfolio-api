class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :github_page_url
      t.string :web_page_url
      t.string :title
      t.text :body
      t.string :description
      t.date :date_deployed

      t.timestamps null: false
    end
  end
end
