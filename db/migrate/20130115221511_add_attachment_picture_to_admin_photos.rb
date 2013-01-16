class AddAttachmentPictureToAdminPhotos < ActiveRecord::Migration
  def self.up
    change_table :admin_photos do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :admin_photos, :picture
  end
end
