class IngredientsController < ApplicationController
    def index
        ingredients = Ingredient.all 
        render json: ingredients
    end

    def show
        ingredient = Ingredient.find(params[:id])
        render json: ingredient
    end

    def create
        name = params[:name]
        category = params[:category]
        nutrition_value = params[:nutrition_value]
        juice = params[:juice_id]        
        ingredient = Ingredient.create(name: name, category: category, nutrition_value: nutrition_value, juice_id: juice)

        render json: ingredient
    end
end
