class InstructionsController < ApplicationController

    # GET /instructions
    # Returns a list of all instructions
    def index
      instructions = Instruction.all
      render json: instructions
    end
  
    # GET /instructions/:id
    # Returns the details of a single instruction
    def show
      instruction = Instruction.find(params[:id])
      render json: instruction
    end
  
    # POST /instructions
    # Creates a new instruction
    def create
      # Build a new instruction for the associated recipe
      instruction = set_recipe.instructions.build(instruction_params)
  
      if instruction.save
        render json: instruction, status: :created 
      else
        render json:{errors:instructions.errors.full_messages}, status: :unprocessable_entity
      end
    end
  
    private
  
    # Finds the recipe associated with the instruction
    def set_recipe
      recipe = Recipe.find(params[:recipe_id])
    end
  
    # Defines the parameters allowed for instruction actions
    def instruction_params
      params.require(:instruction).permit(:step)
    end
  end
  