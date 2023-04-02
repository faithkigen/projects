class RecipesController < ApplicationController
    before_action :authenticate_user!, only: [:create, :update]
  
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
  
    # POST /recipes
    def create
      recipe = Recipe.new(recipe_params)
      if recipe.save
        redirect_to recipe
      else
        render 'new'
      end
    end
  
    # PUT /recipes/:id
    def update
      recipe = Recipe.find(params[:id])
      if recipe.update(recipe_params)
        redirect_to recipe
      else
        render 'edit'
      end
    end

    # Private methods
  
    private
  # add the params alllowed in recipe actions
    def recipe_params
      params.require(:recipe).permit(:title, :category, :description, :image_url,
        ingredients_attributes: [:id, :name, :_destroy],
        instructions_attributes: [:id, :step, :_destroy])
    end
  end
  