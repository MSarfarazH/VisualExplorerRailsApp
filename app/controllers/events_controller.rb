class EventsController < ApplicationController
  def show
    @event = Event.find_by(id: params[:id])
  end

  def index
    @events = Event.all
  end

  def new
    @event=Event.new
  end

  def create
    @event=Event.new(event_params)
    if @event.valid?
      @event.save
      redirect_to event_path(@event)
    else
      flash[:errors]=@event.errors.full_messages
      redirect_to new_event_path
    end
  end

  private 
  def event_params
    params.require(:event).permit(:name, :category, :description, location_id)
  end
end
