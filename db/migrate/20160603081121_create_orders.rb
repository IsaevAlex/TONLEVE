class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :content
      t.integer :sender_user_id
      t.integer :recipient_user_id
      t.integer :service_id

      t.timestamps null: false
    end
  end
end
