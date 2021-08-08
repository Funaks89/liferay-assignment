class RecognitionsController < ApplicationController
  def new
    @recognition = Recognition.new
  end

  def create
    @recognition = Recognition.new(params[:recognition])
    @recognition.save

    redirect_to user_path(@user)
  end

  def edit
    @recognition = Recognition.find(params[:id])
  end

  private

  def recognition_params
    params.require(:recognition).permit(:name, :description)
  end 
end
