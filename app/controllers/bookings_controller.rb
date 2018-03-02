class BookingsController < ApplicationController

  def new
    @booking = Booking.new()
  end

  def create

     @bike = Bike.find(params[:bike_id])
     bikeprice = @bike.price
     @booking = Booking.new(bike_id: params[:bike_id], start_date: params[:begindate], end_date: params[:enddate])
     @booking.user = current_user
     @booking.rental_price = (@booking.end_date - @booking.start_date).to_i * bikeprice
     @booking.save

  end





end
