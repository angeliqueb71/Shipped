class JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def create
    @job = Job.new(job_params)
    # redirect_to users_path
  end

  def edit
    @job = Job.find(params[:id])
  end


  private
  def job_params
    params.require(:job).permit(:title, :body, :location, :cost)
  end
end
