class UserSkill < ApplicationRecord
  belongs_to :user
  belongs_to :skill

  default_scope {order(plus_count: :desc)}
end
