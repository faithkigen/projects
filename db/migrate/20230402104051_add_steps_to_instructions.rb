class AddStepsToInstructions < ActiveRecord::Migration[7.0]
  def change
    add_column :instructions, :step1, :string
    add_column :instructions, :step2, :string
    add_column :instructions, :step3, :string
    add_column :instructions, :step4, :string
    add_column :instructions, :step5, :string
  end
end
