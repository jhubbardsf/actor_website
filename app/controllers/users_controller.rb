class UsersController < ApplicationController

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        flash[:success] = "Updated biography."
        format.html { redirect_to :controller => :admin, :action => :home }
        format.json { head :no_content }
      else
        flash[:error] = "Error updating biography."
        format.html { redirect_to :controller => :admin, :action => :home }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
end