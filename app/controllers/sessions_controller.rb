class SessionsController < ApplicationController

  def index
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end
  def new
    user = User.find_by_email(params[:email])
  end   
  def create
  @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      token = encode_token({user_id: @user.id})
      UserSession.create(user_id:@user.id,token:token) 
    redirect_to sessions_index_path
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    User.find(session[:user_id]).destroy      
    session[:user_id] = nil         
    redirect_to root_path, notice: "Logged out!" 
  end  
end

