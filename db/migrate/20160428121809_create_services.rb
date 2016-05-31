class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :user_id
      t.string :name
      t.text :info
      t.integer :service_category_id

      t.timestamps null: false
    end
  end
end
