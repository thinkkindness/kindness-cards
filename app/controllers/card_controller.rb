class CardController < ApplicationController
  
  def find
    uid = params[:uid]
    if uid
      if find_card(uid)
        redirect_to act_url(params[:uid])
      elsif uid.blank?
        flash[:error] = "We need a number to find your card."
      else
        flash[:error] = "We can't find a card with that number. Try again?"
      end
    end
  end

  def act
    find_card(params[:uid])

    if @card.has_acts?
      # render add a new act
      render :text => "Found card #{@card.uid} - NEW ACT"
    else
      # render the first act
      render :text => "Found card #{@card.uid} - FIRST ACT"
    end
  end

  private

    def find_card(uid)
      @card = Card.where(:uid => uid).first
    end
  
end
