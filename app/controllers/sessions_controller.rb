class SessionsController < ApplicationController

	def new

	end

	def log_in(user)
		session[:user_id] = User.id
	end

	def create
		user = User.authenticate(params[:session][:room_number],
														 params[:session][:password])
		if user.present?
			session[:user_id] = user.id
			@current_user =user
			redirect_to dashboard_path
		else
			render 'new'
		end
	end

	def logged_in?
		!current_user.nil?
	end

	def log_out
		session.delete(:user_id)
		@current_user = nil
		redirect_to root_path
	end

end
