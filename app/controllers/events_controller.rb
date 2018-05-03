class EventsController < ApplicationController

  def index
    @events = Event.all
  end


  def new
    @event = Event.new
  end

  def create
    @Event = Event.new(dog_params)
    get_event_admin_id
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
  end

  def form
  end

  private
  def events_params
    params.require(:events).permit(:title, :description, :location, :date, :time)
  end
end
