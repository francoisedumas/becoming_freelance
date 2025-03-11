class SubscriptionPlan < ApplicationRecord
  has_many :subscriptions

  validates :name, :description, :price, :duration, presence: true
end
