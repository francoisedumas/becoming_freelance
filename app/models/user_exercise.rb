class UserExercise < ApplicationRecord
  belongs_to :user
  belongs_to :exercise

  delegate :content, to: :exercise, allow_nil: true
end
