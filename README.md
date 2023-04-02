# README BACKEND PROJECT
We worked on a recipe project where where in our API we created 5 models, rails g models : users, ingredients, instructions,,  recipes
## RELATIONSHIPS
we were to meet the relationship of many_to_many and one_to_many and these is what we met;
 users has_many recipes ,
recipes has_many ingredients and also has_many instructions,
instructions belongs_to_recipe and
ingredients belongs_to_recipe

## VALIDTIONS
we added the validations in the model to ensure that the data saved in the db meets the requirements given

# SERIALIZERS
we addded gemfile 'active_model_serilizers'
then we rails g serializers to generate the serializers
then added the attributes of  the project of the different model

# TABLES
we created table in the terminal using rails g migration and added the relevant files inside it to the different models relating with the models then we rails db:migrate to create the tables in the schema

## CRUD
We made 8 endpoits that had POST, GET, PUT DELETE we also added the index and show which is always necessary we made the user to have been logged_in in order to use them and access them. if they wanted to update they can must be authoruzed in order to update or add any new user or recipe
We added the bcrypt file so that it can hash the password  it stores passwors securely 
we added it in the gemfile gem 'bcrypt'then use has_secure_passwoord in the model

## ROUTES

We set up the following routes, make sure to return JSON data in the format specified along with the appropriate HTTP verb
 # GET/ users
 [
	{
		"id": 1,
		"username": "Faith Moraa",
		"email": "faithmoraa@gmail.com",
		"password_digest":"9876"
	}
	{
		"id": 1,
		"username": "Faith Kigen",
		"email": "faithkigen@gmail.com",
		"password_digest":"1234"
	}
	
]

# PATCH user/password
This route should update an existing password. It should accept an object with the following properties in the body of the request.
{
  "user": {
    "updated_password": "12324"
  }
}
if the `password` is updated successfully(passes validations”, update its password and return JSON in the format below:
{
	"id":1,
	"username":"Faith Kigen"
	"email":"faithkigen@gmail.com"
	"password":"12324"
}
if the password does not exist, return the following JSON data along with the appropriate HTTP status code:
{
	"error": "Password not found"
}
## GET /recipe
[
	{

		“id”:1,
		
		“title”:”Chicken fajita”,
		
		“category”:”Mexican”, 
		
		“description”:”Chicken fajitas are an easy and flavorful weeknight meal. A classic Mexican recipe, juicy chicken is seasoned, seared and cooked to perfection, then tossed with sauteed bell peppers and onions”,
		
		“image_url: “[https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2020/02/Chicken-Fajitas-7.jpg](https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2020/02/Chicken-Fajitas-7.jpg)”
		
		}

		{

		“id”:1,
		
		“title”:”Beans stew”,
		
		“category”:”Ethiopian”, 
		
		“description”:”Bean stew is a hearty soup made with all sorts of vegetables, seasoned broth, and of course, white beans! It’s chock full of amazing ingredients, and your body will thank you later for filling it up with such good and healthy things!”,
		
		“image_url: “https://therecipecritic.com/wp-content/uploads/2022/01/beanstew-751x1000.jpg”
		
		}

]
## GET /recipe/:id
{
	“id”:1,
	
	”name”:”Chicken fajita”,
	
	““category”:”Mexican”, 
	
	“description”:”**Chicken fajitas** are an easy and flavorful weeknight meal. A classic Mexican recipe, juicy chicken is seasoned, seared and cooked to perfection, then tossed with sauteed bell peppers and onions”,
	
	“image_url: “[https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2020/02/Chicken-Fajitas-7.jpg](https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2020/02/Chicken-Fajitas-7.jpg)”
	
}

if the recipe doesnt exist return the following:
{
	“error”: “Recipe not found”
}
## POST /create_recipe
This route should create a new Recipe . It should accept an object with the following properties in the body of the request

{
	“title”:”French Fries”,

	“ingredients”:”Vegetable or peanut oil, for frying, 5 pounds russet potatoes, Sea salt”,
	
	“instructions”: “ Peel and rinse the potatoes. Then cut them into sticks by cutting the potato in 4 or 5 vertical pieces, and then cutting each piece into sticks.”
	
	“image_url”: “[https://imgs.search.brave.com/hyNHx6d_KDvfbB8LL3D7n6JJaNg_SYIqSoXFbZXle7c/rs:fit:711:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC4t/Rl9nZ0VUMFJ1N01z/RFBBVW5FMXBRSGFF/OCZwaWQ9QXBp](https://imgs.search.brave.com/hyNHx6d_KDvfbB8LL3D7n6JJaNg_SYIqSoXFbZXle7c/rs:fit:711:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC4t/Rl9nZ0VUMFJ1N01z/RFBBVW5FMXBRSGFF/OCZwaWQ9QXBp)”
	
}

if recipe is not created successfully, return the following JSON data with the appropriate HTTP status code:
{
	“errors”:[”validation errors”]
}

## PATCH /create_recipe/:id
This route should update an existing recipe.

It should accept an object with the following property in the body of the request

{
	“ingredients”:”Updated ingredient”,

	“instructions”:”Updated instruction”,
	
	“image_url”:”Updated image_url”
	
}

if the  Recipe exists and is updated successfully(passes validations), update its description and return JSON data in the format below:
{
	"error":"Recipe not found"
}

if the Recipe is not not updated successfully(does not pass validations), return the following JSON data, along with the appropriate HTTP status code:

{
	"errors":["validation errors"]
}

## DELETE /create_recipe/destroy
This route should delete an existing recipe. It should accept

If the recipe is successfully deleted, it should return the following:

{
  "message": "Recipe successfully deleted",
  "status": "success",
  "data": {
    "id": 5,
    "title": "Chocolate Chip Cookies",
    "category": "Dessert",
    "description": "A classic cookie recipe with chocolate chips",
    "image_url": "https://www.example.com/chocolate-chip-cookies.jpg"
  }
}


