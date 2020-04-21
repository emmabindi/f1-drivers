class DriversController < ApplicationController
  skip_before_action :verify_authenticity_token

  before_action :find_driver, only: [:show, :edit, :update, :destroy]

  def index
    @drivers = Driver.all.order(:id)
  end

  def new
    @driver = Driver.new
  end
  
  #Show single driver
  def show
    # id = params[:id].to_i
    # @driver = Driver.find(id)
  end

  #Create a new driver
  def create
    @driver = Driver.create(
      name: driver_params[:name],
      team: driver_params[:team],
      profile: driver_params[:profile])
    redirect_to @driver 
    
    # long version - before driver params method created 
    # @driver = Driver.create(
    #   name: params[:driver][:name],
    #   team: params[:driver][:team],
    #   profile: params[:driver][:profile])

    # short version:
    # @driver = Driver.create(driver_params)
    # or redirect_to driver_path(@driver)
  end

  #page to enter data about updating a driver
  def edit
    id = params[:id].to_i
    # @driver = Driver.find(id)
  end

  #udpate a driver
  def update 
    @driver.update(driver_params)
    redirect_to driver_path(@driver.id)
    # id = params[:id].to_i
    # # @driver = Driver.find(id)
    # @driver.update(
    #   name: params[:driver][:name],
    #   team: params[:driver][:team],
    #   profile: params[:driver][:profile])
    # redirect_to @driver 
  end

  # remove a driver
  def destroy
    # @driver = Driver.find(params[:id])
    @driver.destroy

    redirect_to drivers_path
  end

  private 

  def driver_params
    params.require(:driver).permit(:name, :team, :profile)
  end

  def find_driver
    @driver = Driver.find(params[:id])
  end

end