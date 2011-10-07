class UsersController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def index
    # Only admins can see all users - redirect to user page if not
    redirect_to user_path(current_user) unless current_user.admin?
  end

  def show
  end

  def edit
  end

  def update
  end

end
