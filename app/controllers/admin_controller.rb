class AdminController < ApplicationController
  before_filter :authenticate

  def home
    @title = "Admin Panel"

    @user = User.find_by_id(current_user.id)
  end
end
