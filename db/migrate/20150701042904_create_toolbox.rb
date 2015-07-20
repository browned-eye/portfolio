class CreateToolbox < ActiveRecord::Migration
  def up
    create_table :toolbox do |t|
      t.string :name
    end
  end

  def down
    drop_table :toolbox
  end
end




