class Admin::VideosController < ApplicationController
  before_filter :authenticate

  # GET /admin/videos
  # GET /admin/videos.json
  def index
    @admin_videos = Admin::Video.paginate(:page => params[:page], :per_page => 5)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_videos }
    end
  end

  # GET /admin/videos/1
  # GET /admin/videos/1.json
  def show
    @admin_video = Admin::Video.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_video }
    end
  end

  # GET /admin/videos/new
  # GET /admin/videos/new.json
  def new
    @admin_video = Admin::Video.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_video }
    end
  end

  # GET /admin/videos/1/edit
  def edit
    @admin_video = Admin::Video.find(params[:id])
  end

  # POST /admin/videos
  # POST /admin/videos.json
  def create
    @admin_video = Admin::Video.new(params[:admin_video].merge(:user_id => current_user.id))

    respond_to do |format|
      if @admin_video.save
        format.html { redirect_to @admin_video, notice: 'Video was successfully created.' }
        format.json { render json: @admin_video, status: :created, location: @admin_video }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/videos/1
  # PUT /admin/videos/1.json
  def update
    @admin_video = Admin::Video.find(params[:id])

    respond_to do |format|
      if @admin_video.update_attributes(params[:admin_video])
        format.html { redirect_to @admin_video, notice: 'Video was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/videos/1
  # DELETE /admin/videos/1.json
  def destroy
    @admin_video = Admin::Video.find(params[:id])
    @admin_video.destroy

    respond_to do |format|
      format.html { redirect_to admin_videos_url }
      format.json { head :no_content }
    end
  end
end
