class SessionsController < ApplicationController
    def new
  
    end
  
    def create
      return redirect_to('/login') if !params[:username] || params[:username].empty?
      session[:username] = params[:username]
      redirect_to '/'
    end
  
  
    def destroy
      session.delete :username
      redirect_to '/'
    end
  
  end