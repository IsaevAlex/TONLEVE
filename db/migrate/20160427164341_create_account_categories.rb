class CreateAccountCategories < ActiveRecord::Migration
  def change
    create_table :account_categories do |t|
      t.integer :user_id
      t.string :name
      t.timestamps null: false
    end
  end
end
