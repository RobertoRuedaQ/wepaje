class RemoveGarbageFromUser < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :spree_api_key
  	remove_column :users, :ship_address_id
  	remove_column :users, :bill_address_id
  	remove_column :users, :role_id
  end
end
