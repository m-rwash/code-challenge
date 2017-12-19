class PlusOneController < ApplicationController
	before_action :confirm_logged_in
	def create
		@user_skill = UserSkill.where(user: params[:user]).where(skill: params[:skill]).first
  		unless @user_skill.users_clicked.include? Integer(params[:current_user])
  			@user_skill.plus_count += 1
	  		@user_skill.users_clicked << params[:current_user]
	  		@user_skill.save
  		end
  		redirect_to(user_path(params[:user]))
	end
end
