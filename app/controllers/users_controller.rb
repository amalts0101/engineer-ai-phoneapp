# frozen_string_literal: true

# User controller
class UsersController < ApplicationController
  def index
    users = User.all
    render json: {data: users, status: 'success', message: 'Users loaded'}
  end

  def create
    user = User.create(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name, :city)
  end
end
