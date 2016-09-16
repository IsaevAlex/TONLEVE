class AddPriceColumnsToServices < ActiveRecord::Migration
  def change
    
    add_column :services, :currency_id, :integer
  end
end
