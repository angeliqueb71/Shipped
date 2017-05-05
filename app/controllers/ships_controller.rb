class ShipsController < ApplicationController

  def new
    @ship = Ship.new
    @ships = Ship.all
  end

  def index
    @ships = Ship.all
  end

  def show
    @ship = Ship.find(params[:user][:id])
  end

  def create
    @ship = Ship.create(ships_params)

    if @ship.save
      redirect_to home_path
    else
      redirect_to root_path
    end
end



private

  def ships_params
    params.require(:ship).permit(:name, :container, :location)
  end
end
