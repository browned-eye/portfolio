class Renametoolbox < ActiveRecord::Migration
  def up
    rename_table :toolbox, :toolboxes
  end

  def down
  end
end
