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

  recipe3 = Recipe.create!(
    title: "Beef Bourguignon",
    description: "Beef bourguignon or bœuf bourguignon, also called beef Burgundy, and bœuf à la Bourguignonne, is a French beef stew braised in red wine, often red Burgundy, and beef stock, typically flavored with carrots, onions, garlic, and a bouquet garni, and garnished with pearl onions, mushrooms, and bacon",
    image_url: "https://www.simplyrecipes.com/thmb/AOoI_NDk9fEJj1x4yMTpC_a3qz4=/2000x1333/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2009__01__beef-bourguignon-horiz-a-1800-06-e1593137468258-705x470.jpg",
    category: "French"
  )
  
  recipe4 = Recipe.create!(
    title: "Pad Thai",
    description: "Pad Thai is a popular Thai dish consisting of stir-fried rice noodles, vegetables, and often, tofu or chicken. The dish is typically served with a squeeze of fresh lime and chopped peanuts.",
    image_url: "https://www.eatingthaifood.com/wp-content/uploads/2019/01/thai-pad-thai-recipe-2.jpg",
    category: "Thai"
  )
  
  recipe5 = Recipe.create!(
    title: "Beef Stroganoff",
    description: "Beef Stroganoff is a Russian dish made with sautéed pieces of beef, cooked in a sour cream sauce and served over egg noodles. It's a classic comfort food that's easy to make and always hits the spot.",
    image_url: "https://www.simplyrecipes.com/thmb/FgKVzyPAj2C8OClA0JhC9p9X1ro=/2000x1333/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2009__12__beef-stroganoff-horiz-b-1800-4b4f9fada29e4dab9b851bb96b8f3e3d.jpg",
    category: "Russian"
  )
  
  recipe6 = Recipe.create!(
    title: "Miso Soup",
    description: "Miso soup is a traditional Japanese soup made with miso paste, dashi stock, and various other ingredients such as tofu, seaweed, and green onions. It's a staple of Japanese cuisine and is enjoyed as a breakfast food or as a light lunch or dinner.",
    image_url: "https://www.jessicagavin.com/wp-content/uploads/2021/02/miso-soup-5-1200.jpg",
    category: "Japanese"
  )
  
  
  # Add ingredients and instructions to recipe 1
  recipe1.ingredients.create!(
name: ["Spaghetti", "Pancetta", "Eggs", "Parmesan cheese"] 
    
  )
  
  recipe1.instructions.create!([
    { step: "Cook spaghetti according to package instructions." },
    { step: "Dice the pancetta and cook in a pan until crispy." },
    { step: "In a mixing bowl, whisk together the eggs and parmesan cheese." },
    { step: "Add the cooked spaghetti and pancetta to the mixing bowl, and toss together." },
    { step: "Serve immediately, garnished with additional parmesan cheese and black pepper." }
  ])
  recipe2.ingredients
  
  
  recipe3.ingredients.create!(
    name: "Beef, red wine (often red Burgundy), beef stock, lardons, onions, bouquet garni, pearl onions, mushrooms"
  )

  # create some dishes
Dish.create(title: 'Tacos', subtitle: 'Mexico', image_url: 'https://example.com/tacos.jpg', description: 'A classic Mexican dish')
Dish.create(title: 'Sushi', subtitle: 'Japan', image_url: 'https://example.com/sushi.jpg', description: 'A Japanese delicacy')
Dish.create(title: 'Pizza', subtitle: 'Italy', image_url: 'https://example.com/pizza.jpg', description: 'A beloved Italian dish')

  