class DogsController < ApplicationController
  def index
  end

  def edit
  end

  def new
    @dog = Dog.new
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
