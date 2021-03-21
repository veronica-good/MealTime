class PlansController < ApplicationController
  def create
    plan=Plan.new params.require(:plan).permit(:name)
    plan.user=current_user
    carts=current_user.shopping_carts
    if plan.save
      carts.each do |cart|
        food=Food.find(cart.food.id)
        food_plan=FoodPlan.new food:food, quantity:cart.quantity
        food_plan.plan=plan
        food_plan.save
        cart.destroy
      end

      flash[:notice]='Plan Created'
    else
      flash[:alert]=plan.errors.full_messages.join(', ')
    end
    redirect_to plan_path(plan.id)
  end


  def index
    @plans=current_user.plans
  end

  def show
    @plan=Plan.find params[:id]
    @list=List.new
  end
end
