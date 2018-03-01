class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:search, :show]

  def index

  end

  def new
    @bike = Bike.new
  end

  def create

    @bike = Bike.new(bike_params)

    if @bike.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end



  def show


    if current_user.nil?
      session[:foo] = params[:id]
    end


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
    @bikes = Bike.where.not(latitude: nil, longitude: nil)
    search = params[:search]

    @bikes = @bikes.where(spec: search) if search.present?

    @markers = @bikes.map do |bike|
     {
       lat: bike.latitude,
       lng: bike.longitude,

     }
   end


 end


 def destroy
 end

 private

 def bike_params
  params.require(:bike).permit(:brand, :description, :city, :address, :price, :spec, :photo)
end


end
