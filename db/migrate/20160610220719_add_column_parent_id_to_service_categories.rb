class AddColumnParentIdToServiceCategories < ActiveRecord::Migration
  def change
    add_column :service_categories, :parent_id, :integer
  end
end
