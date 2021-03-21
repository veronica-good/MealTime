class Category < ApplicationRecord
    has_many :food_categories, dependent: :destroy
    has_many :foods, through: :food_categories
end
