require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "Iris McLean"
  end

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                                    :content => @base_title)
    end
  end

  describe "GET 'bio'" do
    it "returns http success" do
      get 'bio'
      response.should be_success
    end

    it "should have the right title" do
      get 'bio'
      response.should have_selector("title",
                                    :content => @base_title + " | Biography")
    end
  end

  describe "GET 'news'" do
    it "returns http success" do
      get 'news'
      response.should be_success
    end

    it "should have the right title" do
      get 'news'
      response.should have_selector("title",
                                    :content => @base_title + " | Latest News")
    end
  end

  describe "GET 'photos'" do
    it "returns http success" do
      get 'photos'
      response.should be_success
    end

    it "should have the right title" do
      get 'photos'
      response.should have_selector("title",
                                    :content => @base_title + " | Photos")
    end
  end

  describe "GET 'videos'" do
    it "returns http success" do
      get 'videos'
      response.should be_success
    end

    it "should have the right title" do
      get 'videos'
      response.should have_selector("title",
                                    :content => @base_title + " | Videos")
    end
  end

  describe "GET 'resume'" do
    it "returns http success" do
      get 'resume'
      response.should be_success
    end

    it "should have the right title" do
      get 'resume'
      response.should have_selector("title",
                                    :content => @base_title + " | Resume")
    end
  end

  describe "GET 'links'" do
    it "returns http success" do
      get 'links'
      response.should be_success
    end

    it "should have the right title" do
      get 'links'
      response.should have_selector("title",
                                    :content => @base_title + " | Links")
    end
  end

end
