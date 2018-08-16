class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :user
      t.text :content
      t.integer :star_point
      t.string :img
      t.belongs_to :bread
      
      t.timestamps
    end
  end
end
