class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def show
    @appointments = Appointment.find(params[:id])
  end

  def create
    @appointment = Appointment.new(appointment_params.merge(mentor_id: session[:user_id]))
    if @appointment.save
      redirect_to '/'
    else

    end
  end


  private
  def appointment_params
    params.require(:appointment).permit(:start_time)
  end
end
