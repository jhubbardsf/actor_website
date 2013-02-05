class PagesController < ApplicationController

  def home
  end

  def bio
    @title = "Biography"

    @biography = User.find_by_username('iris').biography
  end

  def news
    @title = "Latest News"

    @posts = Admin::BlogPost.all(:order => "created_at desc")
  end

  def photos
    @title = "Photos"

    @headshotsize = Admin::Photo.find_all_by_album("headshot").count
    @stillsize = Admin::Photo.find_all_by_album("still").count
    @modelsize = Admin::Photo.find_all_by_album("model").count
  end

  def videos
    @title = "Videos"

    @videos = Admin::Video.all
  end

  def resume
    @title = "Resume"
  end

  def links
    @title = "Links"

    @links = Admin::Link.all(:order => :created_at)
  end

  def gallery
    @title = "Gallery"

    if params[:id].present?
      @images = Admin::Photo.find_all_by_album(params[:id])
    end
  end

  def contact
    @title = "Contact Me"
  end
end
