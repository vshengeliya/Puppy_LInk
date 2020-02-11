class BreedersController < ApplicationController
  # before_action :breeder_authorized, only: [:show]

  def index
    @breeders = Breeder.all
  end

  def show
    @breeder = Breeder.find(params[:id])
  end

  def new
    @breeder = Breeder.new
  end

  def create
    @breeder = Breeder.new(breeder_params)
    if @breeder.save
      session[:breeder_id] = @breeder.id
      flash[:messages] = "New Breeder Added"
      redirect_to breeder_path(@breeder)
    else 
      flash[:messages] = @breeder.errors.full_messages[0]
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

  def destroy
    @breeder = Breeder.find(params[:id])
    @breeder.destroy
    redirect_to breeders_path
  end

  private

  def breeder_params
    params.require(:breeder).permit(:name, :rating)
  end
end
