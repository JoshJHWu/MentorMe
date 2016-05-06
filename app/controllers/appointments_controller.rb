class AppointmentsController < ApplicationController

  def index
    redirect_to '/login' unless logged_in?
    @appointments = Appointment.all
  end

  def new
    redirect_to '/login' unless logged_in?
    @appointment = Appointment.new
    @topics = Topic.all
  end

  def show
    redirect_to '/login' unless logged_in?
    @appointment = Appointment.find(params[:id])
    @mentor = @appointment.mentor
    @student = @appointment.student
  end

  def create
    redirect_to '/login' unless logged_in?
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
      render 'new'
    end
  end

  def update
    redirect_to '/' unless logged_in?
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
