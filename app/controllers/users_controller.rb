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


# has_many :recognitions
# has_many :recognizer, class_name: 'Recognition', foreign_key: :recognizer_id
# has_many :recognitions, class_name: 'Recognition', foreign_key: :recognized_id

# belongs_to :recognizer, class_name: 'User'
# belongs_to :recognized, class_name: 'User'