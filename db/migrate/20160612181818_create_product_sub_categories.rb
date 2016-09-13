class CreateProductSubCategories < ActiveRecord::Migration
  def change
    create_table :product_sub_categories do |t|
      t.string :name
      t.integer :product_category_id

      t.timestamps null: false
    end
  end
end
