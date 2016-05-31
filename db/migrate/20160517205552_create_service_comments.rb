class CreateServiceComments < ActiveRecord::Migration
  def change
    create_table :service_comments do |t|
      t.integer :user_id
      t.integer :service_id
      t.text :comment

      t.timestamps null: false
    end
  end
end
