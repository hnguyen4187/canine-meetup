class AdminsController < ApplicationController
  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def create
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def edit
  end
end
