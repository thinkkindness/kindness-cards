class MainController < ApplicationController
  
  # index is implied
  
  ## Search for the card:
  #  - if found, we need to change the form if there are acts associated or not
  #  - if not found, we need to present an error and let the user try again
  #
  def search
    if @card = Card.where(:uid => params[:uid]).first
      
    else
      flash[:error] = "We can't find a card with that number. Try again?"
      redirect_to root_url
    end
  end
  
  def act
    
  end
  
end
