class UsersController < ApplicationController
    before_action :session_expired?, only: [:check_login_status]


    def index
        users = User.all 
        render json: users
    end
    def show
        user = User.find(params[:id])
        render json: user
    end

    def register 
        user = User.create(user_params)
        if user.valid?
            save_user(user.id)
            app_response(message: 'Registration was successfull', status: :created, data: user)
        else
            app_response(message: 'Something went wrong with the registrtaion', status: :unprocessable_entity, data: user.error)
    end
end

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
  
def passoword
        user = User.find(params[:id])
        if user.update(user_params)
            render json: {message: "Password updated successfully"}
        else 
            render json: { error: "Failed to update password"}
        end
    end

    def logout
        remove_user
        app_response(message: 'Logged out successfully')
    end

    def check_login_status
        app_response(message: 'success', status: :ok)
    end

    private
    def user_params
        params.require(:user).permit(:username, :email, :password_digest, :updated_password)
    end
end
