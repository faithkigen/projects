
ActiveRecord::Schema[7.0].define(version: 2023_04_02_104051) do
  create_table "dishes", force: :cascade do |t|
    t.string "title", null: false
    t.string "subtitle", null: false
    t.string "image_url", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name", null: false
    t.integer "recipe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "instructions", force: :cascade do |t|
    t.text "step", null: false
    t.integer "recipe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "step1"
    t.string "step2"
    t.string "step3"
    t.string "step4"
    t.string "step5"
    t.index ["recipe_id"], name: "index_instructions_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.string "image_url", null: false
    t.string "category", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ingredients", "recipes"
  add_foreign_key "instructions", "recipes"
end
