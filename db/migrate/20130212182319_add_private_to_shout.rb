class AddPrivateToShout < ActiveRecord::Migration
  def up
    add_column :shouts, :private, :boolean, :default => true, :null => false
  end

  def down
    remove_column :shouts, :private
  end
end
