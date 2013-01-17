class Admin::Video < ActiveRecord::Base
  attr_accessible :title, :user_id, :video_file
  has_attached_file :video_file, :styles => {
    :mp4 => { :geometry => "640x480", :format => 'mp4' },
    :ogg => { :geometry => "640x480", :format => 'ogv' },
    :thumb  => { :geometry => "300x300", :format => 'jpg', :time => 30 }
  },                :processors      => [:ffmpeg]


end
