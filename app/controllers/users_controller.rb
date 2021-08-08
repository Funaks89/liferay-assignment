class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @recognitions = @user.recognitions
  end

  private

  def set_user
    @user = User.find([params[:id]])
  end
end
