class UsersController < ApplicationController

  before_action :confirm_logged_in
  
  def index
    @users = User.all
  end

  def show
  	@user = User.includes(:skills).find(params[:id])
  end

  def plus_count(user, skill)
  	@user_skill = UserSkill.where(user: user).where(skill: skill).first
  	@user_skill.plus_count
  end

  helper_method :plus_count
end
