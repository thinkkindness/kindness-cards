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
    @card = Card.find(@track.card_id)

    respond_to do |format|
      format.html
      format.json  { render :json => @track }
    end
  end

  def new
    @card = Card.find_by_serial_number(params[:serial_number])
    @track = Track.new

    respond_to do |format|
      format.html
      format.json  { render :json => @track }
    end
  end

  def create
    @card = Card.find(params[:card_id])
    @track = @card.tracks.build(params[:track])

    respond_to do |format|
      if @track.save
        format.html { redirect_to edit_track_path(@track) }
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
        format.html { redirect_to(@card, :notice => 'Track was successfully updated.') }
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
