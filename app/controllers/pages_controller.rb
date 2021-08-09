class PagesController < ApplicationController

  def home
    # Show latest Recognition given by the authenticated user
    @recognitions_gave = Recognition.last(1)
  end
end
