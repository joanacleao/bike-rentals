class ReviewsController < ApplicationController
  before_action :set_bike
  before_action :set_booking

  def new
    @review = Review.new()
  end

  def create
     @review = Review.new(review_params)
     @review.booking = @booking
     if @review.save
       redirect_to bike_booking_review_path(@bike, @booking, @review)
     else
       render :new
     end
  end

  def show
    @review = Review.find(params[:id])
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def review_params
    params.require(:review).permit(:comment, :rating)
  end


  def set_bike
    @bike = Bike.find(params[:bike_id])
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end
end
