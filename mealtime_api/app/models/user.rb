class User < ApplicationRecord

    has_secure_password

    # one
    # has_many :lists, dependent: :destroy
    # has_many :list_plans, through: :lists, source: :plan
    has_many :shopping_carts, dependent: :destroy
    has_many :cart_foods, through: :shopping_carts, source: :food
    
    has_one :shopping_list
    
    # many_to_many
    has_many :favourites
    has_many :favoured_food, through: :favourites, source: :food

    # one_to_many
    has_many :plans, dependent: :destroy
end
