class UsersController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def index
    redirect_to user_path(current_user) unless can? :manage, @users
  end

  def show
  end

  def edit
  end

  def update
  end

end
