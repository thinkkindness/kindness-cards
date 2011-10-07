class TracksController < ApplicationController

  expose(:card) do
    track.card ||
        Card.find_by_serial_number(params[:serial_number] || params[:card_id]) ||
        Card.find(params[:card_id]) ||
        Card.find(params[:track][:serial_number])
  end
  expose(:tracks) { Track.all }
  expose(:track)
    # TODO: a Track has an owner once created, and should only be editable by them

  def index
    respond_to do |format|
      format.html
      format.json  { render :json => tracks }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json  { render :json => track }
    end
  end

  def new
    respond_to do |format|
      format.html
      format.json  { render :json => track }
    end
  end

  def create
    respond_to do |format|
      if track.save
        format.html { redirect_to edit_track_path(track) }
        format.json  { render :json => track, :status => :created, :location => track }
      else
        format.html { render :action => "new", :flash => "Didn't save!" }
        format.json  { render :json => track.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if track.update_attributes(params[:track])
        format.html { redirect_to(card, :notice => 'Track was successfully updated.') }
        format.json  { head :ok }
      else
        format.html { render :action => "edit" }
        format.json  { render :json => track.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    if track.destroy
      respond_to do |format|
        format.html { redirect_to(tracks_url) }
        format.json  { head :ok }
      end
    else
      # FAIL
    end
  end
end
