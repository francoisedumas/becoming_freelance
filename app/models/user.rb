class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  has_many :user_exercises, dependent: :destroy
  has_many :user_lessons, dependent: :destroy
  has_many :exercises, through: :user_exercises

  has_one :subscription, dependent: :destroy
  has_one :subscription_plan, through: :subscription
end
