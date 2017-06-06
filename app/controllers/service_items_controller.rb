class ServiceItemsController < ApplicationController
  def new
    @service_item = ServiceItem.new
    @service_category = params[:service_category]
  end

 def index
   @service_item = ServiceItem.all
 end

end