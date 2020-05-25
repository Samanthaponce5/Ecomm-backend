class AuthController < ApplicationController


def login
    user = User.find_by(username: params[:username])


    if (user && user.authenticate(params[:password]))
        render json:{ user: user}

    else
        render json: {message: 'invalid username'}
  end
end


end
