class Lesson < ApplicationRecord
  has_many :learning_blocks, dependent: :destroy
  has_many :exercises, dependent: :destroy
  has_many :resources, dependent: :destroy
end
