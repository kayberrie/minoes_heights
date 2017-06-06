class ServicesController < ApplicationController

  def index
    category = params[:service_category].to_i
    @services = Service.includes(:service_items, :user).where(service_category: category)
  end

end