class DriversController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @drivers = Driver.all
  end
  
  #Show single driver
  def show
    id = params[:id].to_i
    @driver = Driver.find(id)
  end

  #Create a new driver
  def create
    @driver = Driver.create(
      name: params[:driver][:name],
      team: params[:driver][:team],
      profile: params[:driver][:profile]
    )
    redirect_to @driver 
    # or redirect_to driver_path(@driver)
  end

  #page to enter data about updating a driver
  def edit
    id = params[:id].to_i
    @driver = Driver.find(id)
  end

  #udpate a driver
  def update 
    id = params[:id].to_i
    @driver = Driver.find(id)
    @driver.update(
      name: params[:driver][:name],
      team: params[:driver][:team],
      profile: params[:driver][:profile]
    )
  end

  # remove a driver
  def destroy
    @driver = Driver.find(params[:id])
    @driver.destroy

    redirect_to drivers_path
  end
end


# MY OLD CODE

#   def index
#   # render json: @drivers
#   end

#   #Show single driver
#   def show
#     # @drivers = Driver.find(params[:id])
#   end

#   #Create a new driver
#   def create
#     # @driver = Driver.new(params[:driver])

#     # @driver.save
#     # redirect_to @driver

#     # or 

#     # @drivers << {
#     #   name: params[:name],
#     #   team: params[:team],
#     #   profile: params[:profile]
#     # }
#   end

#   # #Update a driver
#   # def update
#   # end

#   # #Remove a driver
#   # def destroy
#   # end
# end
