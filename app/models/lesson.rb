class Lesson < ApplicationRecord
  acts_as_list

  has_many :learning_blocks, dependent: :destroy
  has_many :exercises, dependent: :destroy
  has_many :resources, dependent: :destroy

  accepts_nested_attributes_for :learning_blocks, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :exercises, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :resources, reject_if: :all_blank, allow_destroy: true

  def previous_lesson
    Lesson.find_by(position: self.position - 1)
  end

  def next_lesson
    Lesson.find_by(position: self.position + 1)
  end
end
