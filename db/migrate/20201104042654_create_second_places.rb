class CreateSecondPlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :second_places do |t|
      t.integer :user_id
      t.integer :post_id
      t.string :name
      t.text :introduction
      t.string :address
      t.string :postal_code
      t.timestamps
    end
  end
end
