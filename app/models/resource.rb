class Resource < ApplicationRecord
  belongs_to :lesson

  enum resource_type: { link: 0, image: 1 }

  has_one_attached :image
end
