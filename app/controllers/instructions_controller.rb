class InstructionsController < ApplicationController
    def index
        instructions = Instruction.all
        render json: instructions
    end

    def show
        instruction = Instruction.find(params[:id])
        render json: instruction
    end

    def create
        instruction = instructions.build(instruction_params)
        if instruction.save
            render json: instruction, status: :created 
        else
            render json:{errors:instructions.errors.full_message}, status: :unprocessable_entity
        end
    end

    private

    def set_recipe
        recipe = Recipe.find(params[:recipe_id])
    end

    def instruction_params
        params.require(:instruction).permit(:step)
    end
end
