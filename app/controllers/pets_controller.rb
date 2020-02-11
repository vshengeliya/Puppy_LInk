class PetsController < ApplicationController
  # before_action :user_authorized

  def index
    @pets = Pet.all
  end

  def show
    @user = current_user
    @pet = Pet.find(params[:id])
    @suggested_pets = Pet.all.select do |pet| 
    pet.breed == @pet.breed && pet!=@pet
    end
  end


  def adopted_new
    @pet = Pet.find(params[:id])
  end

  def adopted
    @pet = Pet.find(params[:id])
    @user = current_user
    @adopt = Adopt.create(user:@user, pet:@pet)
    redirect_to adopted_new_path
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @breeder = Breeder.find(session[:breeder_id])
      if @pet.save
        redirect_to @breeder
      else 
        flash[:messages] = @pet.errors.full_messages[0]
        render :new
    end
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
    params.require(:pet).permit(:name, :age, :breed, :size, :gender, :image, :breeder_id)
  end

end
