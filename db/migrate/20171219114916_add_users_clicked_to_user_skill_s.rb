class AddUsersClickedToUserSkillS < ActiveRecord::Migration[5.1]
  def change
  	add_column :user_skills, :users_clicked, :integer ,array: true, default: []
  end
end
