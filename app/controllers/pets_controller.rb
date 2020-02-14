class PetsController < ApplicationController
  # before_action :user_authorized

  def index
    
    if params[:breed_search]
      @pets= Pet.breed_search(params[:breed_search])
      elsif params[:size_search]
    @pets= Pet.size_search(params[:size_search])
      elsif params[:gender_search]
    @pets= Pet.gender_search(params[:gender_search])
      elsif params[:age_search]
    @pets= Pet.age_search(params[:age_search])
      else @pets = Pet.all
    end
    @adopt = Adopt.all.map{|adopt| adopt.pet_id}
      @unadopted_pets = @pets.select do |pet|
      !@adopt.include?(pet.id)
    end
  end

  def show
    @user = current_user
    @pet = Pet.find(params[:id])
    @adopt = Adopt.all.find do |adopt|
      adopt.pet_id == @pet.id
     end
   
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
    redirect_to pets_path
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :age, :breed, :size, :gender, :image, :breeder_id, :breed_search, :age_search, :size_search, :gender_search)
  end

end
