class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(events_params)
    @event.admin_id = current_admin.id
    if @event.save
      redirect_to 'events#show'
    else
      puts @event.errors.full_messages
      redirect_to "new"
    end

  def form
  end

  def show
  end

  private
  def events_params
    params.require(:events).permit(:title, :description, :location, :date, :time)
  end
end
