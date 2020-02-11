class CentersController < ApplicationController
  before_action :user_authorized
  
  def index
    @centers = Center.all
  end

  def show
    @center = Center.find(params[:id])
  end

  def new
    @center = Center.new
  end

  def create
    @center = Center.create(center_params)
    redirec_to center_path(@center)
  end

  def edit
    @center = Center.find(params[:id])
  end

  def update
    @center = Center.find(params[:id])
    @center.update (center_params)
    redirec_to center_path(@center)
  end

  def destroy
    @center = center.find(params[:id])
    @center.destroy
  end

  private
  def center_params
    params.require(:center).permit(:name, :location)
  end
end
