class EventsController < ApplicationController
  def index
  end

  def edit
  end

  def form
  end

  def new
    @event = Event.new
  end

  def show
  end

  private
  def events_params
    params.require(:events).permit(:title, :description, :location, :date, :time)
  end
end
