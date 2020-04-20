class DriversController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  # render json: @drivers
  end

  #Show single driver
  def show
    # @drivers = Driver.find(params[:id])
  end

  #Create a new driver
  def create
    # @driver = Driver.new(params[:driver])

    # @driver.save
    # redirect_to @driver

    # or 

    # @drivers << {
    #   name: params[:name],
    #   team: params[:team],
    #   profile: params[:profile]
    # }
  end

  # #Update a driver
  # def update
  # end

  # #Remove a driver
  # def destroy
  # end
end
