class PetsController < ApplicationController
  before_action :user_authorized

  def index
    @pets = Pet.all.select do |pet|
    pet.user_id ==nil
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.create(pet_params)
    redirec_to pet_path(@pet)
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update (pet_params)
    redirec_to pet_path(@pet)
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :age, :breed, :size, :gender, :image, :center_id, :user_id, :breeder_id)
  end

end
