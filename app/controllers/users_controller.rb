class UsersController < ApplicationController

  def index
    @users = User.all()
  end

  def show
    @user = User.find(params[:id])
    
    #soon:
    @wallposts = @user.wallposts
    
  end

	def new
	
	end

	def create
    user = User.new
    user.email = params[:user][:email]
    user.name = params[:user][:name]
    user.password = params[:user][:password]
    user.password_confirmation = params[:user][:password_confirmation]
    user.save!
    session[:user_id] = user.id.to_s
    redirect_to '/'
	end

end