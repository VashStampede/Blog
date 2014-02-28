class Addusername < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_index :users, :name, :default => "", :null => false
    add_index :users, :surname, :default => "", :null => false
  end
end
