class AddColumnTypeOfDocument < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :type_of_document, :string
  end
end
