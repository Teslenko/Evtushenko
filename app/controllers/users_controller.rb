class UsersController < ApplicationController

  # before_filter :authenticate_user!, except => [:show, :index]

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    # debugger
  end

  def create
    @user = User.create(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
      # redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def set_user
    # @user = User.find(params[:id])
    @user = User.find_by id: session[:user_id]
  end
  private

  def user_params
    params.require(:user).permit(:candidates, :name, :email, :password,
                                 :password_confirmation)
  end
end
