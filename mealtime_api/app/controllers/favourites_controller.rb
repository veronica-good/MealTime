class FavouritesController < ApplicationController
    def create
        food= Food.find params[:food_id] 
        favourite= Favourite.new food: food, user: current_user
        if favourite.save
            flash[:notice]='food favourited'
        else
            flash[:alert]=favourite.errors.full_messages.join(', ')
        end
        redirect_to food_path(food)
    end

    def destroy
        favourite = current_user.favourites.find params[:id]
        if favourite.destroy
            flash[:notice]='food unfavourited' 
        else
            flash[:alert]='Couldn\'t unfavourite the food'
        end
        redirect_to favoured_foods_path
    end
end
