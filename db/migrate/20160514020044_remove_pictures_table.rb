class RemovePicturesTable < ActiveRecord::Migration
  def up
    drop_table :pictures
    remove_column :users, :name
  end
end
