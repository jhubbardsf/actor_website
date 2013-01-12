require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'bio'" do
    it "returns http success" do
      get 'bio'
      response.should be_success
    end
  end

  describe "GET 'news'" do
    it "returns http success" do
      get 'news'
      response.should be_success
    end
  end

  describe "GET 'photos'" do
    it "returns http success" do
      get 'photos'
      response.should be_success
    end
  end

  describe "GET 'videos'" do
    it "returns http success" do
      get 'videos'
      response.should be_success
    end
  end

  describe "GET 'resume'" do
    it "returns http success" do
      get 'resume'
      response.should be_success
    end
  end

  describe "GET 'links'" do
    it "returns http success" do
      get 'links'
      response.should be_success
    end
  end

end
