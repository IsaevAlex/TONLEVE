class RemoveColumnsFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :company_name, :string
  	remove_column :users, :last_name, :string
  end
end
