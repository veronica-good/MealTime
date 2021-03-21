class Plan < ApplicationRecord
  belongs_to :user
  has_many :food_plans, dependent: :destroy

  has_many :lists, dependent: :destroy
end
