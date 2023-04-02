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
  recipe2.ingredients.create!(
    name: ["Chicken breasts", "Greek yogurt", "Lemon juice", "Garlic", "Ginger", "Tomato paste", "Heavy cream", "Spices", "Salt", "Butter", "Cilantro"]
)

recipe2.instructions.create!([
    { step: "In a large mixing bowl, combine yogurt, lemon juice, turmeric, cumin, coriander, paprika, cayenne pepper, and salt." },
    { step: "Add chicken pieces to the marinade, making sure they are fully coated, and refrigerate for at least 1 hour, or overnight." },
    { step: "Preheat the oven to 450°F (230°C)." },
    { step: "Thread the chicken pieces onto skewers and discard any excess marinade." },
    { step: "Arrange the skewers on a baking sheet and bake in the oven for 10-15 minutes, or until the chicken is cooked through." },
    { step: "While the chicken is cooking, prepare the sauce. In a large saucepan, heat oil over medium-high heat." },
    { step: "Add onion and cook until softened, about 5 minutes." },
    { step: "Add garlic and ginger and cook for an additional minute." },
    { step: "Add tomato sauce, cream, and garam masala to the saucepan, and stir to combine." },
    { step: "Bring the sauce to a simmer and cook for 10-15 minutes, or until thickened." },
    { step: "Add cooked chicken to the sauce and stir to coat." },
    { step: "Serve the chicken tikka masala over rice, garnished with cilantro and accompanied by naan bread." }
  ])
  
  
  
  recipe3.ingredients.create!(
    name: "Beef, red wine (often red Burgundy), beef stock, lardons, onions, bouquet garni, pearl onions, mushrooms"
  )

  recipe3.instructions.create!([
    { step: "Preheat oven to 325°F (165°C)." },
    { step: "Season beef with salt and pepper." },
    { step: "In a large Dutch oven, cook lardons over medium heat until browned and crispy. Remove with a slotted spoon and set aside." },
    { step: "Increase heat to medium-high and brown beef on all sides in the bacon fat. Remove beef and set aside." },
    { step: "Reduce heat to medium and add onions to the Dutch oven. Cook until soft and translucent, about 5 minutes." },
    { step: "Add mushrooms and pearl onions and cook for another 5 minutes, stirring occasionally." },
    { step: "Return beef and lardons to the Dutch oven." },
    { step: "Add red wine and beef stock to the Dutch oven and bring to a simmer." },
    { step: "Add bouquet garni and cover the Dutch oven with a lid." },
    { step: "Transfer to the preheated oven and cook for 2-3 hours, or until beef is tender." },
    { step: "Remove bouquet garni and serve beef bourguignon hot, garnished with fresh parsley." }
  ])

  recipe4.ingredients.create!([  { name: "8 oz. rice noodles" },  { name: "2 tbsp. vegetable oil" },  { name: "3 garlic cloves, minced" },  { name: "2 shallots, thinly sliced" },  { name: "2 chicken breasts, sliced into thin strips" },  { name: "2 eggs, beaten" },  { name: "1/4 cup chicken or vegetable broth" },  { name: "3 tbsp. fish sauce" },  { name: "2 tbsp. brown sugar" },  { name: "1/2 tsp. red chili flakes" },  { name: "1 cup bean sprouts" },  { name: "1/2 cup chopped peanuts" },  { name: "3 green onions, thinly sliced" },  { name: "1 lime, cut into wedges" }])

  
  recipe4.instructions.create!([
    { step: "Soak rice noodles in warm water for about 10-15 minutes, or until softened." },
    { step: "Heat vegetable oil in a large wok or skillet over high heat." },
    { step: "Add garlic and shallots, and stir-fry for about 1-2 minutes, or until fragrant." },
    { step: "Add chicken (or tofu), and stir-fry until cooked through, about 5-7 minutes." },
    { step: "Push the chicken (or tofu) to one side of the wok or skillet, and add the beaten eggs to the other side." },
    { step: "Scramble the eggs until cooked through, and then mix with the chicken (or tofu)." },
    { step: "Add the soaked rice noodles to the wok or skillet, along with chicken (or vegetable) broth, fish sauce, brown sugar, and red chili flakes." },
    { step: "Stir-fry the noodles and sauce for about 3-5 minutes, or until the noodles are cooked through and the sauce has thickened." },
    { step: "Add bean sprouts, chopped peanuts, and green onions to the wok or skillet, and toss to combine." },
    { step: "Remove from heat and divide into serving bowls." },
    { step: "Squeeze fresh lime over each bowl, and serve hot." }
  ])

  recipe5.ingredients.create!(
    [
      { name: "1 lb beef sirloin, sliced into thin strips" },
      { name: "1 onion, chopped" },
      { name: "2 cloves garlic, minced" },
      { name: "8 oz mushrooms, sliced" },
      { name: "2 tbsp butter" },
      { name: "1 tbsp olive oil" },
      { name: "1 cup beef broth" },
      { name: "1 cup sour cream" },
      { name: "1 tbsp Dijon mustard" },
      { name: "1 lb egg noodles" },
      { name: "Salt and pepper to taste" }
    ]
  )
  
  recipe5.instructions.create!(
    [
      { step: "Cook egg noodles according to package instructions." },
      { step: "In a large skillet, heat butter and olive oil over medium-high heat." },
      { step: "Add beef strips and cook until browned, then remove from the pan." },
      { step: "Add chopped onion to the same skillet and cook until softened, then add minced garlic and sliced mushrooms, and cook until mushrooms are softened." },
      { step: "Add beef broth, sour cream, and Dijon mustard to the skillet and stir until well combined." },
      { step: "Return beef strips to the skillet and stir until heated through." },
      { step: "Season with salt and pepper to taste." },
      { step: "Serve beef stroganoff over cooked egg noodles." }
    ]
  )

  recipe6.ingredients.create!(
    [
      { name: "4 cups dashi stock" },
      { name: "1/4 cup miso paste" },
      { name: "1/2 block firm tofu, cut into small cubes" },
      { name: "1 sheet of nori seaweed, cut into small pieces" },
      { name: "2 green onions, thinly sliced" }
    ]
  )
  
  recipe6.instructions.create!(
    [
      { step: "In a medium saucepan, bring the dashi stock to a boil." },
      { step: "Reduce heat to low, and whisk in the miso paste until dissolved." },
      { step: "Add the tofu and seaweed to the pot, and heat until the tofu is heated through." },
      { step: "Ladle the soup into bowls and garnish with sliced green onions." }
    ]
  )
  
  
  
  

  # create some dishes
Dish.create(title: 'Tacos', subtitle: 'Mexico', image_url: 'https://example.com/tacos.jpg', description: 'A classic Mexican dish')
Dish.create(title: 'Sushi', subtitle: 'Japan', image_url: 'https://example.com/sushi.jpg', description: 'A Japanese delicacy')
Dish.create(title: 'Pizza', subtitle: 'Italy', image_url: 'https://example.com/pizza.jpg', description: 'A beloved Italian dish')

  