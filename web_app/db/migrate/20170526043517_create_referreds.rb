class CreateReferreds < ActiveRecord::Migration[5.0]
  def change
    create_table :referreds do |t|
      t.references :user, foreign_key: true
      t.integer :user_referred_id
      t.boolean :gamma
      t.timestamps
    end
  end
end
