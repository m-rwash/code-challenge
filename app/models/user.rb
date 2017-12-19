class User < ApplicationRecord
	has_many :user_skills

	has_many :skills, through: :user_skills
end
