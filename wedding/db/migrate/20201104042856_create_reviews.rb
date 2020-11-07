class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :place_id
      t.integer :second_place_id
      t.string :title , null: false
      t.text :body, null: false
      t.timestamps
    end
  end
end
