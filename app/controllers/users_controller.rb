class UsersController < ApplicationController

  def index
  end

  def show
  	@user = User.find(params[:id])
  end

  def plus_count(user, skill)
  	@user_skill = UserSkill.where(user: user).where(skill: skill).first
  	@user_skill.plus_count
  end

  helper_method :plus_count
end
