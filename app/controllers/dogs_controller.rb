class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dogs_params)
    @dog.user_id = current_user.id
    if @dog.save
      redirect_to dogs_path
    else
      puts @dog.errors.full_messages
      redirect_to "new"
    end

  def edit
  end

  def show
  end

  def form
  end

  private
  def dogs_params
    params.require(:dogs).permit(:fname, :lname, :gender, :age, :breed, :fix)
  end
end
end
