class AddPaymentToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :payment_method, :text
  end
end
