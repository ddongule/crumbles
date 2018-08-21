class CreateBakeries < ActiveRecord::Migration[5.1]
  def change
    create_table :bakeries do |t|
      t.string :name
      t.text :address
      t.string :telephone_number
      t.string :business_license
      t.string :email
      t.time :open_time
      t.time :close_time
      t.integer :seat
      t.string :image
      t.belongs_to :owner
      
      t.timestamps
    end
  end
end
