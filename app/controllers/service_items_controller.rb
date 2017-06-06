class ServiceItemsController < ApplicationController
  def new
    @service_item = ServiceItem.new
    @service_category = params[:service_category]
  end

  def index
    category = params[:service_category].to_i
    @services = Service.includes(:service_items).where(service_category: category)
  end

  def create
    @service_item = ServiceItem.new(service_items_params)
    if @service_item.save
      redirect_to 'dashboard/provider_dashbaord', notice: 'service item successfully added.'
    else
      render 'new'
    end

  end

  def service_items_params
    params.require(:service_item).permit(:name, :price, :duration, :description, :service_id)
  end

end