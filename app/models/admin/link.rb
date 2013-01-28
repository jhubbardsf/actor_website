class Admin::Link < ActiveRecord::Base
  attr_accessible :link, :title, :description, :user_id
end
