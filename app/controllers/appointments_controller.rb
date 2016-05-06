class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
    @topics = Topic.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def create
    @appointment = Appointment.new(appointment_params.merge(mentor_id: session[:user_id]))
    @appointment.start_datetime = make_start_datetime(params[:appointment][:start_date], params[:appointment][:start_time])

    params[:appointment][:topics].each do |key, value|
      if value == "1"
        @appointment.topics << Topic.find_by(name: key)
      end
    end


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
  def make_start_datetime(date,time)
    dt = "#{date} #{time}"
    return DateTime.parse(dt)
  end

  def appointment_params
    params.require(:appointment).permit(:duration, :topics)
  end
end
