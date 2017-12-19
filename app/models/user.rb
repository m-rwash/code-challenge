class User < ApplicationRecord
	has_many :user_skills
	has_many :skills, through: :user_skills

	has_secure_password
	validates :name, presence: true
end
