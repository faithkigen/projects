class DishesController < ApplicationController
    before_action :set_dish, only: [:show, :update, :destroy]
  # GET/dish
    def index
      dishes = Dish.all
      render json: dishes
    end
  # GET/dishes/:id
    def show
        dish = Dish.find(params[:id])
      render json: dish
    end
  # POST / dishes
    def create
      dish = Dish.new(dish_params)
      if dish.save
        render json: dish, status: :created
      else
        render json: { errors: dish.errors.full_messages }, status: :unprocessable_entity
      end
    end
  # put/ dishes/:id
    def update
      if dish.update(dish_params)
        render json: dish
      else
        render json: { errors: dish.errors.full_messages }, status: :unprocessable_entity
      end
    end
  #DELETE/DESTROY/dishes
    def destroy
      dish.destroy
      head :no_content
    end
  
    private
  
    def set_dish
      dish = Dish.find(params[:id])
    end
  
    def dish_params
      params.require(:dish).permit(:title, :subtitle, :image_url, :description)
    end
  end
  