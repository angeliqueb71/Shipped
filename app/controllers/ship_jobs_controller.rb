class ShipJobsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

    def index
      @ship_job = Ship_job.all
      @jobs = Job.all
      @ships = Show.all
   end

   def new
     

   end

   def ship
     @ship_job = Ship_job.find(params[:id])
   end



   private

   def params_ship_job
     params.require(:ship_job).permit(:name, :container, :location)
   end
 end
