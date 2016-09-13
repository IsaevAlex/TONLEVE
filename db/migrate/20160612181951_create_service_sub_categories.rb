class CreateServiceSubCategories < ActiveRecord::Migration
  def change
    create_table :service_sub_categories do |t|
      t.string :name
      t.integer :service_category_id

      t.timestamps null: false
    end
  end
end
