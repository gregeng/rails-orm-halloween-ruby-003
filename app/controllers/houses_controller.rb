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
    @candies = Candy.all
  end

  def edit
    @house = House.find(params[:id])
    @candies = Candy.all
  end

  def create
    candy_ids = params[:candies]
    candy_objects = Candy.find_candies(candy_ids)

    @house = House.new
    @house.name = params[:house][:name]
    @house.candies = candy_objects
    @house.save
    redirect_to(houses_path)
  end

  def update
    candy_ids = params[:candies]
    candy_objects = Candy.find_candies(candy_ids)

    @house = House.find(params[:id])
    @house.name = params[:house][:name]
    @house.candies = candy_objects
    @house.save
    redirect_to(houses_path)
  end


  def destroy
    @house.destroy
  end

  private
    def house_params
      params.require(:house).permit(:name)
    end
end