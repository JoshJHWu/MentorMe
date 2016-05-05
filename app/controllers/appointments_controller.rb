class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def create
    @appointment = Appointment.new(appointment_params.merge(mentor_id: session[:user_id]))
    if @appointment.save
      redirect_to '/'
    else
      render 'create'
    end
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.student_id = session[:user_id]
    if @appointment.save
      redirect_to '/'
    else
      render '/'
    end
  end

  private
  def appointment_params
    params.require(:appointment).permit(:start_time, :start_date, :duration)
  end
end
