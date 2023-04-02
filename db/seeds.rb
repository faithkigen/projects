user1 = User.create(user_name: 'Faith Kigen', email: 'kigenfaith@m.com', password_digest: 'sj123')
user2 = User.create(user_name: 'Faith Moraa', email: 'moraafaith@f.com', password_digest: 'fm456')
user3 = User.create(user_name: ' Ernest Cheruiyot', email: 'ernestcheru@e.com', password_digest: 'em789')
user4 =User.create(user_name: 'Hassan Hassan', email: 'hassanhassan@h.com', password_digest: 'hh123')

# db/seeds.rb

# Create a few sample recipes
recipe1 = Recipe.create!(
    title: "Spaghetti Carbonara",
    description: "This Spaghetti Carbonara is creamy and smooth, with a delicious savory flavor. If you follow this recipe, youll be serving the most amazing carbonara in no time.If you love Italian food, then you should try our delectable Tuscan chicken pasta with some focaccia bread..",
    image_url: "https://media.istockphoto.com/id/518030640/photo/omelet-with-peppers.jpg?s=1024x1024&w=is&k=20&c=mfzzYBwE1OpZw3Rv9mGfIsDmf3pMKR1oZB4Ds2F2_hI=",
    category: "Italian"
  )
  
  recipe2 = Recipe.create!(
    title: "Chicken Tikka Masala",
    description: "Chicken tikka masala is a dish consisting of roasted marinated chicken chunks in a spiced sauce. The sauce is usually creamy and orange-coloured. The dish was popularised by cooks from India living in Great Britain and is offered at restaurants around the world.",
    image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fpublic-assets.meredithcorp.io%2F746bac4164e975dd05353a1bfa9c42e1%2F167720243762420230223_194750.jpg&q=60&c=sc&orient=true&poi=auto&h=512",
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

  # create some dishes
Dish.create(title: 'Tacos', subtitle: 'Mexico', image_url: 'https://example.com/tacos.jpg', description: 'A classic Mexican dish')
Dish.create(title: 'Sushi', subtitle: 'Japan', image_url: 'https://example.com/sushi.jpg', description: 'A Japanese delicacy')
Dish.create(title: 'Pizza', subtitle: 'Italy', image_url: 'https://example.com/pizza.jpg', description: 'A beloved Italian dish')

  