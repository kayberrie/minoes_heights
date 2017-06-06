class ServiceItemsController < ApplicationController
  def new
    @service_item = ServiceItem.new
    @service_category = params[:service_category]
  end

  def index
    category = params[:service_category].to_i
    @services = Service.includes(:service_items).where(service_category: category)
  end

end