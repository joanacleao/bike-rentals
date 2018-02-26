class BikesController < ApplicationController
  def index

  end

  def new
  end

  def create
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




end
