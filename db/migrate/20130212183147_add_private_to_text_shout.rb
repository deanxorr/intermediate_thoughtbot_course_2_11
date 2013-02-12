class AddPrivateToTextShout < ActiveRecord::Migration
  def up
    add_column :text_shouts, :private, :boolean, :default => true, :null => false
  end

  def down
    remove_column :text_shouts, :private
  end
end
