class AccessController < ApplicationController
  def login
  end

  def attempt_login
  	if params[:name].present? && params[:password].present?
  		found_user = User.where(name: params[:name]).first
  		if found_user
  			authorized_user = found_user.authenticate(params[:password])

  		end
  	end

  	if authorized_user
  		session[:user_id] = authorized_user.id
  		flash[:notice] = "logged in successfully!"
  		redirect_to(user_path(authorized_user))
  	else
  		flash[:notice] = "invalid name/password"
  		render 'login'
  	end
  end

  def logout
  	session[:user_id] = nil
  	flash[:notice] = "logged out!"
  	redirect_to(login_path)
  end
end
