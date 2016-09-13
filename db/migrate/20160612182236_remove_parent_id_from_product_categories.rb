class RemoveParentIdFromProductCategories < ActiveRecord::Migration
  def change
  	remove_column :product_categories, :parent_id
  end
end
