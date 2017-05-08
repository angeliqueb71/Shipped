class JobsController < ApplicationController
  before_action :authenticate_user!

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(params_job)
    respond_to do |format|
        if @job.save
          redirect_to job_path(@job)
        else
          format.html { render :show }
          format.json { render json: @job.errors, status: :unprocessable_entity }
        end
      end
    end

    def edit
      @job = Job.find(params[:id])
    end


    def update
      respond_to do |format|
        if @job.update(job_params)
          format.html { redirect_to @job }
          format.json { render :show, status: :ok, location: @job }
        else
          format.html { render :edit }
          format.json { render json: @job.errors, status: :unprocessable_entity }
        end
      end
  end


  private

    def params_job
      params.require(:job).permit(:title, :body, :location, :container, :cost)
    end
end
