class Admin::Photo < ActiveRecord::Base
  ALBUM_NAMES = %w[headshot still model]

  attr_accessible :album, :caption, :user_id, :picture
  has_attached_file :picture, :styles => { :medium => "600x600", :thumb => "300x300" }

  belongs_to :user

  validates :caption,
            :presence => true

  validates :user_id,
            :presence => true

  validates :album,
            :presence => true

  validates :picture, :attachment_presence => true
end
