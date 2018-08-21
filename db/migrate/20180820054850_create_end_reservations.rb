class CreateEndReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :end_reservations do |t|

      t.integer :bread_id
      t.integer :user_id
      t.integer :amount
      t.date :order_time
      
      t.timestamps
    end
  end
end
