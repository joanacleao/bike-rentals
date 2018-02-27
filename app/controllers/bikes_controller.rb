class BikesController < ApplicationController
  def index

  end

  def new
    @bike = Bike.new
  end

  def create
    @bike=Bike.new(bike_params)
  end

  def edit
  end



  def show
    @bike = Bike.find(params[:id])

  end

  def search

    search = params[:search]
    #raise
    @bikes = Bike.where(spec: search)


  end


  def destroy
  end

  private

  def bike_params
    params.require(:bike).permit(:brand, :description, :city, :address, :price, :spec)
  end


end
