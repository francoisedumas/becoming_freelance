class Resource < ApplicationRecord
  belongs_to :lesson

  enum resource_type: { link: 0, image: 1, text: 2 }

  has_one_attached :image
  has_rich_text :content
end
