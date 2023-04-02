class UsersController < ApplicationController

# GET /users
# Returns a list of all users
def index
    users = User.all 
    render json: users
  end
  
  # GET /users/:id
  # Returns the details of a single user
  def show
    user = User.find(params[:id])
    render json: user
  end
  
  # POST /register
  # Creates a new user
  def register 
    user = User.create(user_params)
    if user.valid?
      save_user(user.id)
      app_response(message: 'Registration was successful', status: :created, data: user)
    else
      app_response(message: 'Something went wrong with the registration', status: :unprocessable_entity, data: user.error)
    end
  end
  
  # POST /login
  # Authenticates a user and returns a token
  def login
    user = User.where('username = :username OR email = :email', username: user_params[:username], email: user_params[:email]).first
    if user&.authenticate(user_params[:password])
      save_user(user.id)
      token = encode(user.id, user.email)
      app_response(message: 'Login was successful', status: :ok, data: { user: user, token: token })
    else
      app_response(message: 'Invalid username/email or password', status: :unauthorized)
    end
  end
  
  # PUT /users/:id/password
  # Updates the password of a user
  def password
    user = User.find(params[:id])
    if user.update(user_params)
      render json: {message: "Password updated successfully"}
    else 
      render json: { error: "Failed to update password"}
    end
  end
  
  # DELETE /logout
  # Logs out the current user
  def logout
    remove_user
    app_response(message: 'Logged out successfully')
  end
  
  # GET /check_login_status
  # Checks if the user is logged in
  def check_login_status
    app_response(message: 'success', status: :ok)
  end
  
  # Private methods
  private
  
  # Defines the parameters allowed for user actions
  def user_params
    params.require(:user).permit(:username, :email, :password_digest, :updated_password)
  end
end
  