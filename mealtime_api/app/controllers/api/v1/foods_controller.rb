class Api::V1::FoodsController < Api::ApplicationController
    def index
        foods=Food.all
        render json: foods
    end

    def show
        food=Food.find params[:id]
        render json: food
    end
end
