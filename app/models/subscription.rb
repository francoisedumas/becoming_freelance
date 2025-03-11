class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :subscription_plan

  validates :start_date, :end_date, presence: true
end
