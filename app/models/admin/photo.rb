class Admin::Photo < ActiveRecord::Base
  attr_accessible :album, :caption, :user_id, :picture
  has_attached_file :picture, :styles => { :medium => "600x600", :thumb => "100x100" }

  belongs_to :user
end
