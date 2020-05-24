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
avatar = rails_blob_path(user.avatar)
# if (user.password == params[:password])
if(user && user.authenticated(params[:password]))
    render json:{ user: user, avatar:avatar }
else
    render json: {message: 'invalid username'}
end


  end

  def create 
    user = User.create(first_name: params[:user][:first_name], password: params[:user][:password])
    render json: user 
  end

  def update 
    
    user = User.find(params[:id])
    user.update(avatar: params[:avatar])
    avatar_url=rails_blob_path(user.avatar)
    render json:{user: user, avatar_url: avatar_url}


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

end
