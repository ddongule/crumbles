class CreateBreads < ActiveRecord::Migration[5.1]
  def change
    create_table :breads do |t|
      t.string :bakery_name
      t.string :bread_name
      t.string :category
      t.integer :amount
      t.integer :bookable_num
      t.integer :price
      t.belongs_to :bakery
      
      t.timestamps
    end
  end
end
