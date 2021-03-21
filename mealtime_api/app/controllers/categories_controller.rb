class CategoriesController < ApplicationController
    def index
        @categories=Category.all
    end
    def show
        @category=Category.find params[:id]
        @foods=@category.foods.all
        @types=["vegeterian", "kids_friendly", "lactose_free"]
    end

    def search
        @types=["vegeterian", "kids_friendly", "lactose_free"]
        @parameter = params[:search].downcase 
        if params[:search].blank?  
            redirect_to(root_path, alert: "Empty field!") and return
        else  
            @results = Food.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")  
        end
    end
end
