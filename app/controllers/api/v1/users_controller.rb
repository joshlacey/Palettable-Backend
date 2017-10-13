class Api::V1::UsersController < ApplicationController

def create
  @user = User.new(username: signup_params[:username], password: signup_params[:password])
  if @user.save
    token = issue_token({ user_id: @user.id})
    render json: { user: @user, jwt: token}, status: 201
  else
    render json: {message: "Username is already taken" }, status: 400
  end
end

private

def signup_params
  params.permit(:username, :password)
end

end
