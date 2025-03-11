class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_exercises, dependent: :destroy
  has_many :exercises, through: :user_exercises

  has_one :subscription, dependent: :destroy
  has_one :subscription_plan, through: :subscription
end
