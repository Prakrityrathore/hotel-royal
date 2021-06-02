class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.references :restaurant, foreign_key: true
      t.string :name
      t.string :item_category
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
