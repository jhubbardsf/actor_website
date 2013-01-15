class AdminController < ApplicationController
  before_filter :authenticate

  def home
    @title = "Admin Panel"
  end

  private

    def authenticate
      deny_access unless signed_in?
    end
end
