class ShoppingCartsController < ApplicationController
    def create
        food= Food.find params[:food_id]
        shopping_cart= ShoppingCart.new sc_params
        shopping_cart.user=current_user
        shopping_cart.food=food
        if shopping_cart.save
            flash[:notice]='Added to your shopping bag!'
        else
            flash[:alert]=shopping_cart.errors.full_messages.join(', ')
        end
        redirect_to food_path(shopping_cart.food)
    end 

    def update
        cart=current_user.shopping_carts.find params[:id]
        if cart.quantity == "two"
            cart.update(quantity: 'four')
        elsif cart.quantity == "four"
            cart.update(quantity: 'two')
        else
            flash[:alert]='Cannot update meal'
        end
        redirect_to cart_foods_path 
    end


    def destroy
        cart=current_user.shopping_carts.find params[:id]
        if cart.destroy
            flash[:notice]='meal deleted' 
        else
            flash[:alert]='Couldn\'t delete the meal'
        end
        redirect_to cart_foods_path
    end

    private
    def sc_params
        params.require(:shopping_cart).permit(:quantity)
    end
end
