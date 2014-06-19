class WallpostsController < ApplicationController

  def create
    wallpost = Wallpost.new
    wallpost.post_comment = params[:wallpost][:post_comment]
    wallpost.created = DateTime.now
    wallpost.user_id = params[:wallpost][:user_id]
    wallpost.save
    
    redirect_to "/users/#{wallpost.user_id}"
    
  end
    

end