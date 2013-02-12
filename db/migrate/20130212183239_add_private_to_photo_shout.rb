class AddPrivateToPhotoShout < ActiveRecord::Migration
  def up
    add_column :photo_shouts, :private, :boolean, :default => true, :null => false
  end

  def down
    remove_column :photo_shouts, :private
  end
end
