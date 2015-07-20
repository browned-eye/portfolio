class Addgithubtoprojects < ActiveRecord::Migration
  def up
    add_column :projects, :github, :string
  end

  def down
     remove_column :projects, :github
  end
end
