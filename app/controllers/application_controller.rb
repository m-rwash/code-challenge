class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  private

  def confirm_logged_in
  	unless session[:user_id]
  		flash[:notice] = "Please log in"
  		redirect_to(login_path)
  	end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
