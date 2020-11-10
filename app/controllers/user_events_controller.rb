class UserEventsController < ApplicationController
  def index
    @user_events=UserEvent.all
  end
  
  def show
    @user_event=UserEvent.find_by(id: params[:id])
  end

  def new
    @user_event=UserEvent.new
  end  

  def create
    byebug
    
    params2[:user_id]=session[:user_id]
    @user_event=UserEvent.new(params2)
    if @user_event.valid?
      @user_event.save
      redirect_to user_event_path(@user_event)
    else
      flash[:errors]=@user_event.errors.full_messages
      redirect_to new_user_event_path
    end
  end

  private
  def params2
    params.require(:user_event).permit(:user_id, :event_id)
  end
end
