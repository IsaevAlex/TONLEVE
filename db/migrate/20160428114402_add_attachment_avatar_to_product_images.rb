class AddAttachmentAvatarToProductImages < ActiveRecord::Migration
  def self.up
    change_table :product_images do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :product_images, :avatar
  end
end
