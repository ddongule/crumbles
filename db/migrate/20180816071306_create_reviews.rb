class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :user
      t.string :user_email
      t.text :content
      t.integer :star_point
      t.string :img
      t.belongs_to :bread
      t.belongs_to :user
      t.belongs_to :owner
      
      t.timestamps
    end
  end
end
