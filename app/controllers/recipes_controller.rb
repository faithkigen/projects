class RecipesController < ApplicationController
    # GET /recipes
    def index
      recipes = Recipe.all
      render json: recipes, each_serializer: RecipeSerializer
    end
  
    # GET /recipes/:id
    def show
      recipe = Recipe.find(params[:id])
      render json: recipe
    end
  
    def create
      recipe = Recipe.new(recipe_params)
      if recipe.save
        redirect_to recipe
      else
        render 'new'
      end
    end
  
    private
  
    def recipe_params
      params.require(:recipe).permit(:title, :category, :description, :image_url,
        ingredients_attributes: [:id, :name, :_destroy],
        instructions_attributes: [:id, :step, :_destroy])
    end
  end
  