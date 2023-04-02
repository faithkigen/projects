class IngredientsController < ApplicationController
    # GET/ ingredients
    def index
        ingredients = Ingredient.all
        render json: ingredients
    end
# GET / ingredients/ :id
    def show
        ingredient = Ingredient.find(params[:id])
        render json: ingredient
    end
# POST/ ingeredients
#it creates a new ingredients
    def create 
        ingredient = ingredients.build(ingredient_params)
        if ingredient.save 
            render json: ingredient, status: :created 
        else
            render json: {errors: ingredient.errors.full_message}, status: :unprocessable_entity 
        end
    end
# PRIVATE
    private
# # associated with the new recipe
    def set_recipe 
        recipe = Recipe.find(params[:recipe_id])
    end
# Defines parameters allowed in the ingredients actions
    def ingredient_params
        params.require(:ingredient).permit(:name)
    end
end
