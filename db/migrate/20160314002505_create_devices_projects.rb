class CreateDevicesProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :devices_projects do |t|
      t.references :device, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true
    end
  end
end
