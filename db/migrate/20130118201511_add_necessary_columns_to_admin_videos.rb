class AddNecessaryColumnsToAdminVideos < ActiveRecord::Migration
  def self.up
    add_column :admin_videos, :youtube_url, :string
    add_column :admin_videos, :thumbnail_file_name, :string
    add_column :admin_videos, :thumbnail_content_type, :string
    add_column :admin_videos, :thumbnail_file_size, :integer
    add_column :admin_videos, :thumbnail_updated_at, :datetime
  end

  def self.down
    remove_column :admin_videos, :youtube_url, :string
    remove_column :admin_videos, :thumbnail_file_name, :string
    remove_column :admin_videos, :thumbnail_content_type, :string
    remove_column :admin_videos, :thumbnail_file_size, :integer
    remove_column :admin_videos, :thumbnail_updated_at, :datetime
  end
end
