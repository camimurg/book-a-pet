class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.where(user: current_user)
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointments_path
  end

  def show
    @appointment = Appointment.find(params[:id])
    # @pet = Pet.find(params[:pet_id])
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user
    @pet = Pet.find(params[:pet_id])
    @appointment.pet = @pet
    if @appointment.save
      redirect_to appointments_path
    else
      render "pets/show"
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :start_time, :end_time, :message)
  end
end
