class UserEventsController < ApplicationController
  def index
    @userevents=UserEvent.all
  end
  
  def show
    @userevent=UserEvent.find_by(id: params[:id])
  end

  def new
    @userevent=UserEvent.new
  end  

  def create
    @userevent=UserEvent.new(params2)
    if @userevent.valid?
      @userevent.save
      redirect_to user_event_path(@user_event)
    else
      flash[:errors]=@userevent.errors.full_messages
      redirect_to new_user_event_path
    end
  end

  private
  def params2
    params.require(:user_event).permit(:user_id, :event_id)
  end
end
