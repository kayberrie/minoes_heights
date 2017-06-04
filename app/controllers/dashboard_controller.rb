class DashboardController < ApplicationController

	def index
 if (session[:user_id]).present?
	 render 'dashboard/index'
 else
	 redirect_to root_path
 end
	end

	def show

	end

end
