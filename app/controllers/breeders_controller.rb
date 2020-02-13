class BreedersController < ApplicationController
  # before_action :breeder_authorized, only: [:show]

  def index
      @breeders = Breeder.all
  end

  def show
    @breeder = Breeder.find(params[:id])
    @profile = session[:breeder_id]
    @user = current_user
  end

  def new
    @breeder = Breeder.new
  end

  def create
    @breeder = Breeder.new(breeder_params)
    if @breeder.save
      session[:breeder_id] = @breeder.id
      redirect_to breeder_path(@breeder)
    else 
      flash[:messages].now = @breeder.errors.full_messages[0]
      render :new
    end
  end

  def edit
    @breeder = Breeder.find(params[:id])
  end

  def update
    @breeder = Breeder.find(params[:id])
    @breeder.update(breeder_params)
    redirect_to breeder_path(@breeder)
  end

  def sort_by_rating
    @breeders = Breeder.all.sort_by{|b| b.rating}.reverse
    render :index
  end

  def dog_sort
    @breeders = Breeder.all.sort_by{|b| b.pets.count}.reverse
    render :index
  end

  def add_to_rating
    avg_rating = []
    avg_rating << @breeder.rating && @rates.to_i
    avg_rating.average
  end

  def destroy
    @breeder = Breeder.find(current_breeder)
    @breeder.destroy
    redirect_to breeders_path
  end

  private

  def breeder_params
    params.require(:breeder).permit(:name, :password, :rating)
  end
end
