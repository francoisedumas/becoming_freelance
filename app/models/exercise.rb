class Exercise < ApplicationRecord
  belongs_to :lesson
  has_many :user_exercises, dependent: :destroy
  has_many :users, through: :user_exercises
end
