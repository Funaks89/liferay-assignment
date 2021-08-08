class RecognitionsController < ApplicationController
  def new
    @recognition = Recognition.new
  end

  def create
    @recognition = Recognition.new(recognition_params)
    @recognition.save
    @recognition.recognized = @user
    # @recognition.recognizer = current_user

    redirect_to recognitions_new_path(@user)
  end

  def edit
    @recognition = Recognition.find(params[:id])
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def recognition_params
    params.require(:recognition).permit(:name, :description)
  end 
end
