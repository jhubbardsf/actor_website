class Admin::PhotosController < ApplicationController
  before_filter :authenticate

  # GET /admin/photos
  # GET /admin/photos.json
  def index
    @admin_photos = Admin::Photo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_photos }
    end
  end

  # GET /admin/photos/1
  # GET /admin/photos/1.json
  def show
    @admin_photo = Admin::Photo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_photo }
    end
  end

  # GET /admin/photos/new
  # GET /admin/photos/new.json
  def new
    @admin_photo = Admin::Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_photo }
    end
  end

  # GET /admin/photos/1/edit
  def edit
    @admin_photo = Admin::Photo.find(params[:id])
  end

  # POST /admin/photos
  # POST /admin/photos.json
  def create
    @admin_photo = Admin::Photo.new(params[:admin_photo])

    respond_to do |format|
      if @admin_photo.save
        format.html { redirect_to @admin_photo, notice: 'Photo was successfully created.' }
        format.json { render json: @admin_photo, status: :created, location: @admin_photo }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/photos/1
  # PUT /admin/photos/1.json
  def update
    @admin_photo = Admin::Photo.find(params[:id])

    respond_to do |format|
      if @admin_photo.update_attributes(params[:admin_photo])
        format.html { redirect_to @admin_photo, notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/photos/1
  # DELETE /admin/photos/1.json
  def destroy
    @admin_photo = Admin::Photo.find(params[:id])
    @admin_photo.destroy

    respond_to do |format|
      format.html { redirect_to admin_photos_url }
      format.json { head :no_content }
    end
  end
end
