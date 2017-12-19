class PlusOneController < ApplicationController
	def create
		@user_skill = UserSkill.where(user: params[:user]).where(skill: params[:skill]).first
  		if !(@user_skill.users_clicked.include? Integer(params[:user]))
  			@user_skill.plus_count += 1
	  		@user_skill.users_clicked << params[:user]
	  		@user_skill.save
  		end
  		redirect_to(user_path(params[:user]))
	end
end
