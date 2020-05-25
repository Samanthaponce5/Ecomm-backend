class UsersController < ApplicationController

 def index 
  users = User.all
  if users
    render json: users
   else render json:{status: 500, message: "No users found"}
  end
end



  def create 
    user = User.create({first_name: params[:first_name], username: params[:username], password: params[:password], last_name: params[:last_name]})
    render json:  user 
  end



end

