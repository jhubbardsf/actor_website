class RemoveVideoFileFromAdminVideosTable < ActiveRecord::Migration
  def self.up
    remove_column :admin_videos, :video_file_file_name
    remove_column :admin_videos, :video_file_content_type
    remove_column :admin_videos, :video_file_file_size
    remove_column :admin_videos, :video_file_updated_at
  end

  def self.down
    add_column :admin_videos, :video_file_file_name, :string
    add_column :admin_videos, :video_file_content_type, :string
    add_column :admin_videos, :video_file_file_size, :integer
    add_column :admin_videos, :video_file_updated_at, :datetime
  end
end
