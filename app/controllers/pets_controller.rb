class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
    @appointment = Appointment.new
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :address, :city, :description, :picture)
  end
end
