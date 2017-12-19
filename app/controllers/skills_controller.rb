class SkillsController < ApplicationController

  def new
  	@user = User.find(params[:user_id])
  	@skill = @user.skills.new
  end

  def create
  	@user = User.find(params[:user_id])
  	@skill = Skill.new(skill_params)
  	@skill.users << @user
  	if @skill.save
      flash[:notice] = "Skill added successfully."
      redirect_to(user_path(@user))
    else
      render('new')
    end
  end

  def show
  	@skill = Skill.find(params[:id])
  end

  private
  def skill_params
  	params.require(:skill).permit(:name)
  end
end
