class UsersController < ApplicationController

  protect_from_forgery with: :null_session
  before_action :authenticate_user, only: [:show]

  def index
    @users = User.all
  end

  def edit

  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create   
    @user = User.create!(name:params[:name],email:params[:email],password:params[:password])
    if @user.valid?
      token = encode_token({user_id: @user.id})
      UserSession.create(user_id:@user.id,token:token)
      redirect_to sessions_new_path
    else
      render json: {error: 'Invalid user name or password'},status: :unprocessable_entity       
    end    
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])    
    if @user = @user.update(name:params[:name],
      email:params[:email],
      password_digest:params[:password_digest])
    
    redirect_to root_path
    else 
    render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])
    if @user.present?
       @user.destroy
    redirect_to root_path
    end
  end 
end
