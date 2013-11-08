class HousesController < ApplicationController

  def index
    @kid = Kid.find(session[:user_id])
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def edit
    @house = House.find(params[:id])
  end

  def create
    @house = House.new(house_params)

    if @house.save
      redirect_to houses_path
    else
      render action: 'new'
    end
  end

  def destroy
    @house.destroy
  end

  private
    def house_params
      params.require(:house).permit(:name)
    end
end