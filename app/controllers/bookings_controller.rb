class BookingsController < ApplicationController
  def new
    @booking = Booking.new()
  end

  def create
    @booking = Booking.new(bike_id: params[:bike_id], start_date: params[:begindate], end_date: params[:enddate])
  end

  def show
  end
end
