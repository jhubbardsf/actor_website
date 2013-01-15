class SessionsController < ApplicationController

  def new
    @title = "Sign in"
  end

  def create
    user = User.authenticate(params[:session][:username],
                             params[:session][:password])
    if user.nil?
      flash[:error] = "Invalid email/password combination."
      @title        = "Sign in"
      render :new
    else
      sign_in user
      redirect_to admin_path
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end