class ShipsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @ships = Ship.all
    @jobs = Job.all
  end

  def new
    @ship = current_user.ships.build

  end

  def ship
    @ship = Ship.find(params[:id])
  end

  def create
    @ship = current_user.ships.build(params_ship)
    respond_to do |format|
        if @ship.save
          redirect_to ship_path(@ship)
        else
          format.html { render :show }
          format.json { render json: @ship.errors, status: :unprocessable_entity }
        end
      end
    end

    def edit
      @ship = ship.find(params[:id])
    end


    def update
      respond_to do |format|
        if @ship.update(ship_params)
          format.html { redirect_to @ship }
          format.json { render :ship, status: :ok, location: @ship }
        else
          format.html { render :edit }
          format.json { render json: @ship.errors, status: :unprocessable_entity }
        end
      end
  end


private

  def params_ship
    params.require(:ship).permit(:name, :container, :location, :avatar)
  end
end
