require "spec_helper"

describe Admin::PhotosController do
  describe "routing" do

    it "routes to #index" do
      get("/admin_photos").should route_to("admin_photos#index")
    end

    it "routes to #new" do
      get("/admin_photos/new").should route_to("admin_photos#new")
    end

    it "routes to #show" do
      get("/admin_photos/1").should route_to("admin_photos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin_photos/1/edit").should route_to("admin_photos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin_photos").should route_to("admin_photos#create")
    end

    it "routes to #update" do
      put("/admin_photos/1").should route_to("admin_photos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin_photos/1").should route_to("admin_photos#destroy", :id => "1")
    end

  end
end
