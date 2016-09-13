class AddProductSubCategoryIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :product_sub_category_id, :integer
  end
end
