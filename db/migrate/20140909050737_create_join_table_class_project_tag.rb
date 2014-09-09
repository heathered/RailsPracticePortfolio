class CreateJoinTableClassProjectTag < ActiveRecord::Migration
  def change
    create_table :class_projects_tags, :id => false do |t|
      t.integer :class_project_id
      t.integer :tag_id
    end
  end
end
