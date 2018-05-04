class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    get_dog_user_id
    @dog.user_id = current_user.id
    if @dog.save
      redirect_to new_dog_path
    else
      puts dog.errors.full_messages
      redirect_to "new"
    end

  def edit
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def form
  end

  private
    def dog_params
      params.require(:dog).permit(:fname, :lname, :gender, :age, :breed, :fix)
    end
  end
end
end
