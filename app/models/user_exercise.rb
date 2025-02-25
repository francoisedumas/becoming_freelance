class UserExercise < ApplicationRecord
  belongs_to :user
  belongs_to :exercise

  delegate :description, to: :exercise, allow_nil: true
end
