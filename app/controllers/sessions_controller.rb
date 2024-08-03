class SessionsController < ApplicationController

  def create
    @user = User.find_by_username(params[:username])
    if !!@user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      session[:username] = @user.username
      # session[:user] = [@user.id, @user.username]
      # flash[:notice] = 'Successful Sign In'
      redirect_to user_path(@user)
    else
      redirect_to sign_in_path, alert: 'Invalid Sign In'
    end
  end

    def destroy
      reset_session
      redirect_to root_path
    end

end
