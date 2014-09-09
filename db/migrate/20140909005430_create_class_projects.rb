class CreateClassProjects < ActiveRecord::Migration
  def change
    create_table :class_projects do |t|
      t.text :name
      t.text :desc
      t.text :url

      t.timestamps
    end
  end
end
