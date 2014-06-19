class SessionsController < ApplicationController


  # logout
	def destroy

		session[:user_id] = nil
		# (or session.destroy)
    flash[:notice] = "Logged Out!"
		redirect_to '/'
	end

  #login page
	def new

	end

  #execute login
	def create
		user = User.where(email: params[:email]).first
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id.to_s
	    flash[:notice] = "Logged In!"
      redirect_to '/'
      
		else
      flash[:notice] = "Invalid Login!"
      redirect_to '/login'
		end
	end

end