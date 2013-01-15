class AdminController < ApplicationController
  before_filter :authenticate

  def home
    @title = "Admin Panel"
  end
end
