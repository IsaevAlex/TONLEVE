class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :user_id
      t.string :name
      t.text :info
      t.integer :category_id
      t.decimal :price
      t.integer :price_category_id

      t.timestamps null: false
    end
  end
end
