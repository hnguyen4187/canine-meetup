class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user_id = current_user.id
    if @dog.save
      redirect_to dogs_path
    else
      p @dog.errors.full_messages
      redirect_to dogs_path
    end
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def update
  @dog = Dog.find(params[:id])
  @dog.update(dog_params)
  @dog.save
  redirect_to dog_path(@dog)
end

def destroy
  @dog = Dog.find(params[:id])
  @dog.destroy
  redirect_to user_path
end

  private
    def dog_params
      params.require(:dog).permit(:fname, :lname, :gender, :age, :breed, :fix, :avatar)
    end
  end
