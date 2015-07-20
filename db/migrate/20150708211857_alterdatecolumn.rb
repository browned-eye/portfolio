class Alterdatecolumn < ActiveRecord::Migration
  def up
     change_column :projects, :proj_date, :string
  end

  def down
  end
end
