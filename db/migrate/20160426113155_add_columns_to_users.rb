class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :company_name, :string
    add_column :users, :signupcategory_id, :integer
  end
end
