user1 = User.create(user_name: 'Faith Kigen', email: 'kigenfaith@m.com', password_digest: 'sj123')
user2 = User.create(user_name: 'Faith Moraa', email: 'moraafaith@f.com', password_digest: 'fm456')
user3 = User.create(user_name: ' Ernest Cheruiyot', email: 'ernestcheru@e.com', password_digest: 'em789')
user4 =User.create(user_name: 'Hassan Hassan', email: 'hassanhassan@h.com', password_digest: 'hh123')

# db/seeds.rb

# Create a few sample recipes
recipe1 = Recipe.create!(
    title: "Spaghetti Carbonara",
    description: "Classic Italian dish made with spaghetti, eggs, pancetta, and parmesan cheese.",
    image_url: "https://www.example.com/images/spaghetti-carbonara.jpg",
    category: "Italian"
  )
  
  recipe2 = Recipe.create!(
    title: "Chicken Tikka Masala",
    description: "Indian dish made with marinated chicken in a tomato-based curry sauce.",
    image_url: "https://www.example.com/images/chicken-tikka-masala.jpg",
    category: "Indian"
  )
  
  # Add ingredients and instructions to recipe 1
  recipe1.ingredients.create!(
    name: "Spaghetti",
    #quantity: "1 pound"
  )
  
  recipe1.ingredients.create!(
    name: "Pancetta",
    #quantity: "4 ounces"
  )
  
  recipe1.ingredients.create!(
    name: "Eggs",
    #quantity: "3"
  )
  
  recipe1.ingredients.create!(
    name: "Parmesan cheese",
    #quantity: "1/2 cup"
  )
  
  recipe1.instructions.create!(
    step: "Cook spaghetti according to package instructions."
  )
  
  recipe1.instructions.create!(
    step: "Dice the pancetta and cook in a pan until crispy."
  )
  
  recipe1.instructions.create!(
    step: "In a mixing bowl, whisk together the eggs and parmesan cheese."
  )
  
  recipe1.instructions.create!(
    step: "Add the cooked spaghetti and pancetta to the mixing bowl, and toss together."
  )
  
  recipe1.instructions.create!(
    step: "Serve immediately, garnished with additional parmesan cheese and black pepper."
  )
  