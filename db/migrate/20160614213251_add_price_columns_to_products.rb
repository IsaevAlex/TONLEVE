class AddPriceColumnsToProducts < ActiveRecord::Migration
  def change
    
    add_column :products, :unit_id, :integer
    add_column :products, :currency_id, :integer
  end
end
