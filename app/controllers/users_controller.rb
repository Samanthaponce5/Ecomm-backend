class UsersController < ApplicationController

 def index 
  users = User.all
  if users
    render json: users
   else render json:{status: 500, message: "No users found"}
  end
end


def show
  user = User.find_by(id: params[:id])
  if user
    render json: user

      # render json: product,except:[:created_at,:updated_at]
  else
      render json: { message: 'No user found with that id' }
  end
end 



  def create 
    user = User.create({first_name: params[:first_name], username: params[:username], password: params[:password], last_name: params[:last_name]})
    render json:  user 
  end



end

