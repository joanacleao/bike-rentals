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
        @markers = [{
        lat: @bike.latitude,
        lng: @bike.longitude
        #,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }]

  end

  def search

    #raise
    @bikes = Bike.all
    search = params[:search]


    if search == ""
      @bikes = Bike.all
    else
      @bikes = @bikes.where(spec: search)
    end


  end


  def destroy
  end

  private

  def bike_params
    params.require(:bike).permit(:brand, :description, :city, :address, :price, :spec)
  end


end
