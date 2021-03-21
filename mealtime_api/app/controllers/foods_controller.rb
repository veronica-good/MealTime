class FoodsController < ApplicationController

    def index
        @foods=Food.all
    end

    def show
        @food=Food.find params[:id]
        @favourite=@food.favourites.find_by(user: current_user)
        @shopping_cart=ShoppingCart.new
    end

    def favoured
        @foods=current_user.favoured_food.order(created_at: :desc)
    end

    def cart
        @carts=current_user.shopping_carts.order(created_at: :desc)
        @plan=Plan.new
        @food_plan=FoodPlan.new
    end
    
end
