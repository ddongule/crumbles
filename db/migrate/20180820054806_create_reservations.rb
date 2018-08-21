class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|

      t.integer :bread_id
      t.integer :user_id
      t.integer :amount
      
      t.timestamps
    end
  end
end
