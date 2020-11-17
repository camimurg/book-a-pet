class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
    @pet = Pet.find(params[:pet_id])
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @appointment = Appointment.new(appointment_params)
    @appointment.pet_id = @pet.id
    if @appointment.save
      redirect_to @appointment
    else
      render "pets/show"
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :time, :message)
  end
end
