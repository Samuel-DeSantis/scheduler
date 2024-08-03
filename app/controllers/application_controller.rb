class ApplicationController < ActionController::Base

  def logged_in?
    !!session[:name]
  end

  def current_user
    @user = (User.find_by_id(params[:id]) || User.new)
  end

end
