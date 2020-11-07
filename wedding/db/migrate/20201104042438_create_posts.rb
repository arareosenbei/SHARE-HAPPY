class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :image_id
      t.string :title, null: false
      t.text :body, null: false
      t.timestamps
    end
  end
end
