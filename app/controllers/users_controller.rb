class UsersController < ApplicationController
  def new
  	
  end
  def create

  	@user = User.create(username: params[:name], bio: params[:bio])

  	if @user.valid?
  		redirect_to show_user_path(@user.username)
  	else
  		redirect_to "error_path"
  	end
  end
  def show
  	@user = User.find_by_username(params[:username])
  end
  def error
  	
  end
end
