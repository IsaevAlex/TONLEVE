class AddProductCountToProducts < ActiveRecord::Migration
  def change
    add_column :products, :product_count, :integer
  end
end
