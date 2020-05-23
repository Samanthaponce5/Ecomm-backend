class UsersController < ApplicationController

def index
users = User.all
render json: users
end


def show
user = User.find_by(first_name: params[:first_name])
avatar = rails_blob_path(user.avatar)
if user.password == params[:password]
    render json:{ user: user, avatar:avatar }
else
    render json: {message: 'This user is not authenticated'}
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

end
