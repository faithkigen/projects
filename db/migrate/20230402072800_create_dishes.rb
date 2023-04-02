class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :title, null: false
      t.string :subtitle, null: false
      t.string :image_url, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
