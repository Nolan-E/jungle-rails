class SplitNameIntoFirstLast < ActiveRecord::Migration
  def up
    rename_column :users, :name, :firstname
    add_column :users, :lastname, :string
  end

  def down
    rename_column :users, :firstname, :name
    remove_column :users, :lastname, :string
  end
end
