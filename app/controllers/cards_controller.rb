class CardsController < ApplicationController
  def index
    @cards = Card.all

    respond_to do |format|
      format.html
      format.xml  { render :xml => @cards }
    end
  end

  def show
    @card = Card.where(:serial_number => params[:id]).first
    @tracks = @card.tracks

    respond_to do |format|
      format.html
      format.xml  { render :xml => @card }
    end
  end

  def new
    @card = Card.new

    respond_to do |format|
      format.html
      format.xml  { render :xml => @card }
    end
  end

  def create
    @card = Card.new(params[:card])

    respond_to do |format|
      if @card.save
        format.html { redirect_to(@card, :notice => 'Card was successfully created.') }
        format.xml  { render :xml => @card, :status => :created, :location => @card }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @card.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @card = Card.find(params[:id])

    respond_to do |format|
      if @card.update_attributes(params[:card])
        format.html { redirect_to(@card, :notice => 'Card was successfully updated.') }
        format.xml  { head :ok }
      else
        format.xml  { render :xml => @card.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy

    respond_to do |format|
      format.html { redirect_to(cards_url) }
      format.xml  { head :ok }
    end
  end
end
