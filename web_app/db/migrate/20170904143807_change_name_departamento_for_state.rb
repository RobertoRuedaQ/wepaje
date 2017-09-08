class ChangeNameDepartamentoForState < ActiveRecord::Migration[5.0]
  def change
  	rename_column :users, :departamento, :state
  	rename_column :users, :ciudad, :city
  end
end
