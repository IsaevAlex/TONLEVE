class AddAccountCategoryIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :account_category_id, :integer
  end
end
