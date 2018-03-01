class BookingsController < ApplicationController
  def new
    @booking = Booking.new()
  end

  def create
    @booking = Booking.new(start_date: params[:begindate], end_date: params[:enddate])
  end

  def show
  end
end
