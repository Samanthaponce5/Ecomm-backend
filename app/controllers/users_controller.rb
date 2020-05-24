class UsersController < ApplicationController

def index
users = User.all
  if users
    render json: users
  else render json:{status: 500, message: "No users found"}
  end
end


def show
user = User.find_by(username: params[:username])


if user.password == params[:password]
    render json:{ user: user}

else
    render json: {message: 'invalid username'}
end


  end

  def create 
    user = User.create(user_params)
    render json:user 
  end

  def update 
    
    user = User.find(params[:id])

   
    # byebug
    render json:{user: user}


  end



  private
  def user_params
params.require(:user).permit(:first_name, :last_name, :username, :password)
  end
end




#   def index
#     users = User.all
#     render json: users, except: [:created_at, :updated_at]
# end

# def show
#     user = User.find_by(id: params[:id])
#     if user
#         render json: user,except:[:created_at,:updated_at]
#     else
#         render json: { message: 'No user found with that id' }
#     end
# end 