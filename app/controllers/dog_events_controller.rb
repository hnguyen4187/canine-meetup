class DogEventsController < ApplicationController
  def create
    join = DogEvent.new(dog_events_params)
    if join.save
      redirect_to event_path(params[:dog_event][:event_id])
    end
  end

  def destroy

  end

  private

  def dog_events_params
    params.require(:dog_event).permit(:dog_id, :event_id)
  end
end
