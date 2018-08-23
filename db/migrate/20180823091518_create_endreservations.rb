class CreateEndreservations < ActiveRecord::Migration[5.1]
  def change
    create_table :endreservations do |t|
      t.integer :bakery_id
      t.integer :bread_id
      t.integer :user_id
      t.integer :amount
      t.timestamps
    end
  end
end
