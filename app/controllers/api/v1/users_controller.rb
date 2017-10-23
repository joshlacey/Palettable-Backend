class Api::V1::UsersController < ApplicationController
skip_before_action :authorized, only: [:create]

def create
  @user = User.new(username: signup_params[:username], password: signup_params[:password])
  if @user.save
    token = issue_token({ user_id: @user.id})
    render json: { user: @user, jwt: token}, status: 201
  else
    render json: {message: "Username is already taken" }, status: 400
  end
end

def my_palates
  @palates = Palate.where(user_id: params[:id])
  render json: @palates, status: 200
end

def delete_palate
  @palate = Palate.find_by(id: params[:id])
  if @palate.destroy
    @palates = Palate.where(user_id: params[:userId])
    render json: @palates, status: 200
  else
    render json: {message: "You do not have permission to destroy this work of art"}, status: 400
  end
end

private

def signup_params
  params.permit(:username, :password)
end

end
