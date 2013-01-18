require "spec_helper"

describe Admin::BlogPostsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin_blog_posts").should route_to("admin_blog_posts#index")
    end

    it "routes to #new" do
      get("/admin_blog_posts/new").should route_to("admin_blog_posts#new")
    end

    it "routes to #show" do
      get("/admin_blog_posts/1").should route_to("admin_blog_posts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin_blog_posts/1/edit").should route_to("admin_blog_posts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin_blog_posts").should route_to("admin_blog_posts#create")
    end

    it "routes to #update" do
      put("/admin_blog_posts/1").should route_to("admin_blog_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin_blog_posts/1").should route_to("admin_blog_posts#destroy", :id => "1")
    end

  end
end
