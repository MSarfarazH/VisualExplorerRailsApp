class SessionsController < ApplicationController

    def sign_in
        @user = User.new
    end

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:id] = @user.id
            session[:username] = @user.username
            redirect_to user_path(@user)
        else
            flash[:error] = "Incorrect Username or Password"
            redirect_to '/sign_in'
        end
    end


    def destroy
        session.clear
        redirect_to '/'
    end


    private 

    def user_params
        params.require(:user).permit(:username, :password)
    end

end