class Admin::Link < ActiveRecord::Base
  attr_accessible :link, :title, :description, :user_id

  validates :link,
            :presence => true

  validates :title,
            :presence => true

  validates :description,
            :presence => true
end
