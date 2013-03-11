class Admin::Video < ActiveRecord::Base
  attr_accessible :title, :user_id, :thumbnail, :youtube_url
  has_attached_file :thumbnail, :styles => { :medium => "600x600", :thumb => "300x300" }

  validates :thumbnail, :attachment_presence => true

  def fancybox_url
    youtube_url.gsub("watch?v=", "v/")
  end
end
