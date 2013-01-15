class Photo < ActiveRecord::Base
  attr_accessible :album, :caption, :user_id
end
