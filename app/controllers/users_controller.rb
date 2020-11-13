class UsersController < ApplicationController

  def index
    @users=User.all
  end

  def new
    @user=User.new
  end

  def create
   
    @user=User.new(user_params)
    if @user.valid?
      @user.save
      session[:id] = @user.id
      session[:username] = @user.username
    redirect_to user_path(@user)
    else
      flash[:errors]=@user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def update
    @user = User.find(session[:id])
    @user.update(user_params)
    if !@user.valid?
        flash[:errors]= @user.errors.full_messages
        redirect_to edit_user_path
    else @user.save
        redirect_to user_path(@user)
    end
  end


  def destroy 
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/homepage'
  end

  def show
    @user=User.find_by(id: session[:id])
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :interest, :bio, :img_url, :username, :password)
  end
end
