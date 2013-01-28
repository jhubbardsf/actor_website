class Admin::BlogPostsController < ApplicationController
  # GET /admin/blog_posts
  # GET /admin/blog_posts.json
  def index
    @admin_blog_posts = Admin::BlogPost.paginate(:page => params[:page], :per_page => 5)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_blog_posts }
    end
  end

  # GET /admin/blog_posts/1
  # GET /admin/blog_posts/1.json
  def show
    @admin_blog_post = Admin::BlogPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_blog_post }
    end
  end

  # GET /admin/blog_posts/new
  # GET /admin/blog_posts/new.json
  def new
    @admin_blog_post = Admin::BlogPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_blog_post }
    end
  end

  # GET /admin/blog_posts/1/edit
  def edit
    @admin_blog_post = Admin::BlogPost.find(params[:id])
  end

  # POST /admin/blog_posts
  # POST /admin/blog_posts.json
  def create
    @admin_blog_post = Admin::BlogPost.new(params[:admin_blog_post].merge(:user_id => current_user.id))

    respond_to do |format|
      if @admin_blog_post.save
        format.html { redirect_to @admin_blog_post, notice: 'Blog post was successfully created.' }
        format.json { render json: @admin_blog_post, status: :created, location: @admin_blog_post }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_blog_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/blog_posts/1
  # PUT /admin/blog_posts/1.json
  def update
    @admin_blog_post = Admin::BlogPost.find(params[:id])

    respond_to do |format|
      if @admin_blog_post.update_attributes(params[:admin_blog_post])
        format.html { redirect_to @admin_blog_post, notice: 'Blog post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_blog_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/blog_posts/1
  # DELETE /admin/blog_posts/1.json
  def destroy
    @admin_blog_post = Admin::BlogPost.find(params[:id])
    @admin_blog_post.destroy

    respond_to do |format|
      format.html { redirect_to admin_blog_posts_url }
      format.json { head :no_content }
    end
  end
end
