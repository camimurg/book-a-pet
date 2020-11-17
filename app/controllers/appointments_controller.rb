class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.where(user: current_user)
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointments_path
  end
end
