class ListsController < ApplicationController
  
  def create
    plan=Plan.find params[:plan_id]
    list=List.new
    # list.user=current_user
    list.plan=plan 
    if list.save
      flash[:notice]='Yeaaah, let\'s go shopping!'
    else
      flash[:notice]='Can not create shopping list!'
    end
    redirect_to list_path(list)
  end

  def show
    list=List.find params[:id]
    @plan=list.plan
    # plan.food_plans.each do |fp|
    #   @fps
    # end
  end


end
