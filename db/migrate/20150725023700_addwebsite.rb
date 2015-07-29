class Addwebsite < ActiveRecord::Migration
  def up
     add_column :projects, :website, :string
    add_column :projects, :report, :string
  end

  def down
    remove_column :projects, :website
    remove_column :projects, :report
  end
end
