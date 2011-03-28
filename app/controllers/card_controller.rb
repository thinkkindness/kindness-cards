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
    @act = @card.acts.new
    render :action => @card.has_acts? ? "new_act" : "first_act"
  end

  def create_act
    if params[:act]
      if Card.find(params[:act][:card_id])
        # not pretty but it works - connect the act to the logged in user
        act_hash = user_signed_in? ? params[:act].merge({:user_id => current_user.id}) : params[:act]
        act = Act.create(act_hash)
        redirect_to show_card_url(act.card.uid)
      else
        flash[:error] = "We don't have a card with number #{params[:act][:card_id]}."
        redirect_to root_url
      end
    else
      redirect_to root_url
    end
  end
  
  def show
    find_card(params[:uid])
    @recent_acts = @card.acts.recent
  end
  
  private

    def find_card(uid)
      @card = Card.where(:uid => uid).first
    end
  
end
