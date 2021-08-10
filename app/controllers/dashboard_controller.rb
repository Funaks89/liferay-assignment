class DashboardController < ApplicationController

def show
  # making the controller to show the names and recognitions descriptions in the dashboard
  @user = current_user
  # This will make sure that when listing all the employees if the user is logged in it wont list themselves
  @employees = User.all.reject{ |user| user == @user}
  @recognitions_gave = @user.recognitions_gave
  @recognitions_recieved = @user.recognitions_recieved
end


end
