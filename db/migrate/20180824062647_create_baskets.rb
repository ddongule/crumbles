class CreateBaskets < ActiveRecord::Migration[5.1]
  def change
    create_table :baskets do |t|

      t.integer :bread_id
      t.integer :amount
      t.belongs_to :user
      t.timestamps
    end
  end
end
