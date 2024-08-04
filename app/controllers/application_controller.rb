class ApplicationController < ActionController::Base

  def logged_in?
    !!session[:user_id]
  end

  def current_user
    @user ||= User.find_by_id(params[:id]) if !!session[:user_id]
  end

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to root_path # halts request cycle
    end
  end

end
