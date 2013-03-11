class Admin::BlogPost < ActiveRecord::Base
  attr_accessible :article, :title, :user_id

  validates :article,
            :presence => true

  validates :title,
            :presence => true
end
