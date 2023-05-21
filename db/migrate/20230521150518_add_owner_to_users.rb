class AddOwnerToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :is_owner, :boolean, default: false, null: false
  end
end
