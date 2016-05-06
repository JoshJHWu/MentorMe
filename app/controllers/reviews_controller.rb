class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @appointment = Appointment.find(params[:appointment_id])
  end

  def create

    @review = Review.new(review_params)
    @review.user = current_user

    if current_user.is_mentor?
      @review.type = "ReviewOfStudent"
    else
      @review.type = "ReviewOfMentor"
    end

    if @review.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  private
  def review_params
    params.require(:review).permit(:type,
                                   :rating,
                                   :body,
                                   :appointment_id,
                                   :user)
  end

end
