class ChangeColumnNamePayment < ActiveRecord::Migration[5.0]
  def change
  	rename_column :users, :payment, :payment_method
  end
end
