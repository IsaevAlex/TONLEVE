class DropServiceLikesTable < ActiveRecord::Migration
  def up
    drop_table :service_likes
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
