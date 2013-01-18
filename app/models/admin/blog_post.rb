class Admin::BlogPost < ActiveRecord::Base
  attr_accessible :article, :title, :user_id
end
