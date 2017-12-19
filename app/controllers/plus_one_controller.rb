class PlusOneController < ApplicationController
	def create
		@user_skill = UserSkill.where(user: params[:user]).where(skill: params[:skill]).first
  		@user_skill.plus_count += 1
  		@user_skill.save
  		redirect_to(user_path(params[:user]))
	end
end
