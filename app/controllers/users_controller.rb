class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create
  end

  def show
    p params
    p current_user
    if !current_user
      redirect_to new_user_session_path
    elsif params[:id].nil?
      @user = current_user
      @user_dogs = @user.dogs
    else
      @user = User.find(params[:id])
      @user_dogs = @user.dogs
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  def destroy
  end

  def edit
    @user = User.find(params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:fname, :lname, :description, :avatar)
    end

  end
