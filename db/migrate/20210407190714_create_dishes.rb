class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :title, null: false
      t.text :description
      t.integer :price, null: false
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
