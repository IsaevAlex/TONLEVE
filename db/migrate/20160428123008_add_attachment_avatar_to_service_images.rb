class AddAttachmentAvatarToServiceImages < ActiveRecord::Migration
  def self.up
    change_table :service_images do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :service_images, :avatar
  end
end
