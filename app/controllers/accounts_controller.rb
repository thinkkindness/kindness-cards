class AccountsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def index
    respond_to do |format|
      format.html
      format.json  { render :json => @accounts }
    end
  end

  def show
    @cards = @account.cards
    respond_to do |format|
      format.html
      format.json  { render :json => @account }
    end
  end

  def new
    respond_to do |format|
      format.html
      format.json  { render :json => @account }
    end
  end

  def edit
  end

  def create
    @account = Account.new(params[:account])
    respond_to do |format|
      if @account.save
        format.html { redirect_to(@account, :notice => 'Account was successfully created.') }
        format.json  { render :json => @account, :status => :created, :location => @account }
      else
        format.html { render :action => "new" }
        format.json  { render :json => @account.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @account.update_attributes(params[:account])
        format.html { redirect_to(@account, :notice => 'Account was successfully updated.') }
        format.json  { head :ok }
      else
        format.html { render :action => "edit" }
        format.json  { render :json => @account.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @account.destroy
        format.html { redirect_to(accounts_url) }
        format.json  { head :ok }
      else
        format.html { render :action => "show" }
        format.json  { render :json => @account.errors, :status => :unprocessable_entity }
      end
    end
  end
end
