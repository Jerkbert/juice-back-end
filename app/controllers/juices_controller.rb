class JuicesController < ApplicationController
    def index
        juices = Juice.all 
        render json: juices
    end

    def show
        juice = Juice.find(params[:id])
        render json: juice
    end

    def create
        # test = Juice.create(juice_params)
        test = Juice.create(juice_params)
        render json: test
        # byebug 

    end

    private 

    def juice_params
        params.require(:juice).permit(:name, :imageURL, :user_id, :creator, :ing, :directions)
        # params.permit(:name, :imageURL, :user_id, :creator, :ing, :directions)
    end

end
