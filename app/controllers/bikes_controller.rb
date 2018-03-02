class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:search, :show]

  def index

  end

  def new
    @bike = Bike.new

  end

  def create

    @bike = Bike.new(bike_params)
    @bike.user = current_user

    if @bike.save
      redirect_to bikes_mybikes_path, notice: "Your bike has been created!"
    else
      render :new, alert: "Could not save your bike!"
    end
  end

  def edit
    @bike = Bike.find(params[:id])
  end

  def update

    @bike = Bike.find(params[:id])
    if @bike.update(bike_params)
      redirect_to root_path, notice: "Your bike has been update!"
    else
      render :edit, alert: "Could not update your bike!"
    end
  end


  def mybikes

    @bikes = current_user.bikes
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

    if params[:search].present?
      sql_query = " \
        bikes.brand @@ :search \
        OR bikes.city @@ :search \
        OR bikes.spec @@ :search \
      "
      @bikes = Bike.where(sql_query, search: "%#{params[:search]}%")
    else
      @bikes = Bike.where.not(latitude: nil, longitude: nil)
    end



    #raise

    search = params[:search]

    @markers = @bikes.map do |bike|
     {
       lat: bike.latitude,
       lng: bike.longitude,

     }
    end


  end


  def destroy


    @bike = Bike.find(params[:id])
    @bike.destroy
    redirect_to bikes_mybikes_path


  end

 private

 def bike_params
  params.require(:bike).permit(:brand, :description, :city, :address, :price, :spec, :photo)
end


end
