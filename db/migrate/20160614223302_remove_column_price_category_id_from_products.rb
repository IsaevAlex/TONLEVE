class RemoveColumnPriceCategoryIdFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :price_category_id, :integer
  end
end
