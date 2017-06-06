class DashboardController < ApplicationController

  def index
    @services = current_user.service_provider_role? ? current_user.services : []
  end


end


