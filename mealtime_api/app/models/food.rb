class Food < ApplicationRecord
    # many_to_many
    has_many :shopping_carts, dependent: :destroy
    has_many :cart_users, through: :shopping_carts, source: :user

    has_many :food_categories, dependent: :destroy
    has_many :categories, through: :food_categories

    has_many :favourites, dependent: :destroy
    has_many :favouriters, through: :favourites, source: :user

    has_many :food_plans, dependent: :destroy
    has_many :planned, through: :food_plans, source: :plan

    # one_to_many
    has_many :recipes, dependent: :destroy
    has_many :preparations, dependent: :destroy


end
