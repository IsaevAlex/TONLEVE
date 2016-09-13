class RemoveParentIdFromServiceCategories < ActiveRecord::Migration
  def change
  	remove_column :service_categories, :parent_id
  end
end
