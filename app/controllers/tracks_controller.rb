class TracksController < ApplicationController
  def index
    @tracks = Track.all

    respond_to do |format|
      format.html
      format.json  { render :json => @tracks }
    end
  end

  def show
    @track = Track.find(params[:id])
    @card = @track.card

    respond_to do |format|
      format.html
      format.json  { render :json => @track }
    end
  end

  def new
    if params[:card_id]
      @card = Card.where(:serial_number => params[:card_id]).first
    end
    @track = Track.new

    respond_to do |format|
      format.html
      format.json  { render :json => @track }
    end
  end

  def create
      @card = Card.where(:serial_number => params[:track][:serial_number]).first
    if @card
      @track = @card.tracks.build(params[:track])
    else
      flash[:alert] = 'Please provide a valid card number!'
      redirect_to '/'
      return
    end

    respond_to do |format|
      if @track.save
        format.html { redirect_to edit_track_path(@track.id) }
        format.json  { render :json => @track, :status => :created, :location => @track }
      else
        format.html { render :action => "new", :flash => "Didn't save!" }
        format.json  { render :json => @track.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @track = Track.find(params[:id])
    @card = @track.card
  end

  def update
    # TODO: a Track has an owner by now, and should only be editable by them
    @track = Track.find(params[:id])
    @card = @track.card

    respond_to do |format|
      if @track.update_attributes(params[:track])
        format.html { redirect_to(card_path(@card.serial_number), :notice => 'Track was successfully updated.') }
        format.json  { head :ok }
      else
        format.html { render :action => "edit" }
        format.json  { render :json => @track.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy

    respond_to do |format|
      format.html { redirect_to(tracks_url) }
      format.json  { head :ok }
    end
  end
end
