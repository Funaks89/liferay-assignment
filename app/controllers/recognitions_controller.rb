class RecognitionsController < ApplicationController
  def new
    # initialize a recogntion instance
    @recognition = Recognition.new
  end

  def create
    # Create Recognition
    @recognition = Recognition.new(recognition_params)
    @recognition.recognizer = current_user
    @recognition.recognized = User.find(params[:user_id])
    @recognition.save
    # @recognition_recognized = @user.description
    # @recognition.recognizer = current_user
    #when a new Recognition is saved redirect to users dashboard
    redirect_to dashboard_path
  end

  def edit
    @recognition = Recognition.find(params[:id])
  end

  private

  # make parameters for User and recognition creations
  def set_user
    @user = User.find(params[:id])
  end

  def recognition_params
    params.require(:recognition).permit(:name, :description)
  end 
end
