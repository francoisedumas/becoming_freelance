class LearningBlock < ApplicationRecord
  belongs_to :lesson
  
  has_rich_text :content
end
