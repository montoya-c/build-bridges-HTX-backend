class Api::V1::UsersController < ApplicationController

  skip_before_action :check_authentication, only: [ :create, :profile ]

  def create
    user = User.create(user_params)
    if user.valid?
      token = encode_token(user_id: user.id)
      render json: {user: user, jwt: token}, status: :created
    else
      render json: {error: 'failed to create user'}, status: :not_acceptable
    end
  end

  def profile
    render json: current_user, include: { resources: { include: [ :details ]}}
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :email, :organization_name)
  end
end
