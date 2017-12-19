class AddPlusCountToUserSkills < ActiveRecord::Migration[5.1]
  def change
  	add_column :user_skills, :plus_count, :integer, default: 0
  end
end
