class CitiesController < ApplicationController
  def index
    @cities = City.search(params[:search])
    @search = params[:search]
  end
  def show
    @city = City.find_by_id(params[:id])
    @reviews = Review.where(city_id: @city.id).order("created_at DESC")
  end
  def new
    @city = City.new
  end

  def create
    @city = City.new(params.require(:city).permit(:city_name, :state_name, :country_name))
    if @city.save
      redirect_to city_url(@city),
      notice: 'City successfully created'
    else
      flash.now[:alert] = 'Error! Unable to create city.'
      render :new
    end
  end
  def make
    
  end
end
