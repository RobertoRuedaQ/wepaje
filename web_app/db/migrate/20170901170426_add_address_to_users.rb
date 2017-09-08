class AddAddressToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :address, :text
    add_column :users, :neighborhood, :text
    add_column :users, :departamento, :text
    add_column :users, :ciudad, :text
  end
end
