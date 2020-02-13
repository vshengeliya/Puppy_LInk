class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = current_user
    @adopt = Adopt.all.find do |adopt|
      adopt.user_id == @user.id
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else 
      flash.now[:messages] = @user.errors.full_messages[0]
      render :new
    end
  end


  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :password)
  end
end
