require "spec_helper"

describe Admin::VideosController do
  describe "routing" do

    it "routes to #index" do
      get("/admin_videos").should route_to("admin_videos#index")
    end

    it "routes to #new" do
      get("/admin_videos/new").should route_to("admin_videos#new")
    end

    it "routes to #show" do
      get("/admin_videos/1").should route_to("admin_videos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin_videos/1/edit").should route_to("admin_videos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin_videos").should route_to("admin_videos#create")
    end

    it "routes to #update" do
      put("/admin_videos/1").should route_to("admin_videos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin_videos/1").should route_to("admin_videos#destroy", :id => "1")
    end

  end
end
