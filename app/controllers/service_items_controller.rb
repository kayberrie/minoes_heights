class ServiceItemsController < ApplicationController
  def new
    @service_item = ServiceItem.new
  end

  def index
    category = params[:service_category].to_i
    @services = Service.includes(:service_items).where(service_category: category)
  end

  def create
    name = params[:service][:service_category]
    category = name.downcase.to_sym
    service = Service.where(user_id: current_user.id, service_category: category)
    if service.blank?
      service = Service.create(name: name, service_category: category, user: current_user)
      service.save!
    end

    service_item = ServiceItem.create(service_items_params)
    service_item.service_id = service.id

    if service_item.save!
      redirect_to dashboard_path, notice: 'service item successfully added.'
    else
      render 'new'
    end

  end

  def service_items_params
    params.require(:service_item).permit(:name, :price, :duration, :description, :service_id)
  end

end