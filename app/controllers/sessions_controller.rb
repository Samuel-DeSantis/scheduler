class SessionsController < ApplicationController

  def create
    @user = User.find_by_username(params[:username])
    if !!@user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      session[:username] = @user.username
      redirect_to projects_path
    else
      redirect_to sign_in_path, notice: '(!) Invalid Sign In'
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

end
