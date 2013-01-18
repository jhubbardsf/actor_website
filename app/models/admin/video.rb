class Admin::Video < ActiveRecord::Base
  attr_accessible :title, :user_id

end
