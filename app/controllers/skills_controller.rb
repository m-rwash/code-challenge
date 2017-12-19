class SkillsController < ApplicationController

  before_action :confirm_logged_in

  def new
  	@user = User.find(params[:user_id])
  	@skill = @user.skills.new
  end

  def create
  	@user = User.find(params[:user_id])
    @skill = Skill.where('lower(name) = ?', skill_params[:name].downcase).first 
    @skill ||= Skill.new(skill_params)
  	if @skill.save
      @skill.users << @user
      flash[:notice] = "Skill added successfully."
      redirect_to(user_path(@user))
    else
      render('new')
    end
  end

  def show
  	@skill = Skill.includes(:users).find(params[:id])
  end

  private
  def skill_params
  	params.require(:skill).permit(:name)
  end
end
