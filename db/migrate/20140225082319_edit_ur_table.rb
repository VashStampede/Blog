class EditUrTable < ActiveRecord::Migration
  def change
    remove_column :users_roles, :created_at
    remove_column :users_roles, :updated_at
#    add_column :users_roles, :user_id, :integer
  end
end
