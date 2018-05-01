class UserController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
    if params[:id].nil?
      @user = current_user
    else
      @user = User.find(paramas[:id])
    end
  end

  def update
  end

  def destroy
  end

  def edit
  end
end
