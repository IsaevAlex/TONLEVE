class DropProductLikesTable < ActiveRecord::Migration
  def up
    drop_table :product_likes
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
