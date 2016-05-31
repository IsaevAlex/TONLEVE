class CreateServiceImages < ActiveRecord::Migration
  def change
    create_table :service_images do |t|

      t.timestamps null: false
    end
  end
end
