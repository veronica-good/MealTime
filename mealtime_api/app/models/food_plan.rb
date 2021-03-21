class FoodPlan < ApplicationRecord
  belongs_to :plan
  belongs_to :food
end
