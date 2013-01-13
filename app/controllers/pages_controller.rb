class PagesController < ApplicationController

  def home
  end

  def bio
    @title = "Biography"
  end

  def news
    @title = "Latest News"
  end

  def photos
    @title = "Photos"
  end

  def videos
    @title = "Videos"
  end

  def resume
    @title = "Resume"
  end

  def links
    @title = "Links"
  end
end
