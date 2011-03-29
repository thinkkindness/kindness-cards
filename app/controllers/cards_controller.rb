class CardsController < ApplicationController
  before_filter :authenticate_account!, :except => [:show]
  load_and_authorize_resource

  def index
    @cards = Card.all

    respond_to do |format|
      format.html
      format.json  { render :json => @cards }
    end
  end

  def show
    @card = Card.find(params[:id])
    @account = Account.find(@card.account_id)
    @tracks = @card.tracks

    respond_to do |format|
      format.html
      format.json  { render :json => @card }
    end
  end

  def new
    @account = Account.find(params[:account_id])
    @card = Card.new

    respond_to do |format|
      format.html
      format.json  { render :json => @card }
    end
  end

  def create
    @account = Account.find(params[:account_id])
    @card = @account.cards.new(params[:card])

    respond_to do |format|
      if @card.save
        format.html { redirect_to(@card, :notice => 'Card was successfully created.') }
        format.json  { render :json => @card, :status => :created, :location => @card }
      else
        format.html { render :action => "new" }
        format.json  { render :json => @card.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @card = Card.find(params[:id])

    respond_to do |format|
      if @card.update_attributes(params[:card])
        format.html { redirect_to(@card, :notice => 'Card was successfully updated.') }
        format.json  { head :ok }
      else
        format.json  { render :json => @card.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy

    respond_to do |format|
      format.html { redirect_to(cards_url) }
      format.json  { head :ok }
    end
  end
end
