class ApplicationController < ActionController::Base
    def welcome
        redirect_to controller: 'sessions', action: 'new' unless session[:username]
      end
end
