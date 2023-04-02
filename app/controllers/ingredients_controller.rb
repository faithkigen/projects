class IngredientsController < ApplicationController
    def index
        ingredients = Ingredient.all
        render json: ingredients
    end
    def show
        ingredient = Ingredient.find(params[:id])
        render json: ingredient

    def create 
        ingredient = ingredients.build(ingredient_params)
        if ingredient.save 
            render json: ingredient, status: :created 
        else
            render json: {errors: ingredient.errors.full_message}, status: :unprocessable_entity 
        end

        private
        def set_recipe 
            recipe = Recipe.find(params[:recipe_id])
        end

        def ingredient_params
            params.require(:ingredient).permit(:name)

        end
end
