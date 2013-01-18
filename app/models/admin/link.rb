class Admin::Link < ActiveRecord::Base
  attr_accessible :link, :title, :user_id
end
