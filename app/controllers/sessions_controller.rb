class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by_username(params[:username])
    if !!@user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      session[:username] = @user.username
      redirect_to user_path
    else
      message = 'Username or password are incorrect, please try again.'
      redirect_to sign_in_path, notice: message
    end
  end

end
