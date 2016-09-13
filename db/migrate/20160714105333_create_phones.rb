class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.text :number
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
