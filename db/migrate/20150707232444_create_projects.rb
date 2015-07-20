class CreateProjects < ActiveRecord::Migration
  def up
    create_table :projects do |t|
      t.string :title
      t.string :title_short
      t.date :proj_date
      t.string :tags
      t.string :thumb
      t.string :toolbox_ids
      t.string :skills
      t.integer :rank
      t.string  :place
      t.string  :role
      t.string  :team
      t.string   :tagline
      t.text    :description
    end

    create_table :project_types do |t|
      t.string :name
      t.string :tag
    end
  end

  def down
    drop_table :projects
    drop_table :project_types
  end
end
