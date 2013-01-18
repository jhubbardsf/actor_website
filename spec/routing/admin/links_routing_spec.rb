require "spec_helper"

describe Admin::LinksController do
  describe "routing" do

    it "routes to #index" do
      get("/admin_links").should route_to("admin_links#index")
    end

    it "routes to #new" do
      get("/admin_links/new").should route_to("admin_links#new")
    end

    it "routes to #show" do
      get("/admin_links/1").should route_to("admin_links#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin_links/1/edit").should route_to("admin_links#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin_links").should route_to("admin_links#create")
    end

    it "routes to #update" do
      put("/admin_links/1").should route_to("admin_links#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin_links/1").should route_to("admin_links#destroy", :id => "1")
    end

  end
end
