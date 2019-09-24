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
        name = params[:name]
        image = params[:imageURL]
        user = params[:user_id]
        creator = params[:creator]
        juice = Juice.create(name: name, imageURL: image, creator: creator, user_id: user)

        render json: juice
    end
end
