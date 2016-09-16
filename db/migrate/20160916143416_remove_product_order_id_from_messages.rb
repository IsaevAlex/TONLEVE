class RemoveProductOrderIdFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :product_order_id, :integer
  end
end
