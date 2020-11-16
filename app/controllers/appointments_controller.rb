class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @appointment = Appointment.new(appointment_params)
    @appointment.pet = @pet
    if @appointment.save
      redirect_to @pet
    else
      render "appointments/show"
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to pets_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :time, :message)
  end
end
