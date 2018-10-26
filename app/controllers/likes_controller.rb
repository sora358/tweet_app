class LikesController < ApplicationController
  def create
    @like = current_user.likes.build(micropost_id: params[:micropost_id])
    @like.save
    redirect_back(fallback_location: root_url)
  end
  
  def destroy
    @like = Like.find_by(user_id: current_user.id, micropost_id: params[:micropost_id])
    @like.destroy
    redirect_back(fallback_location: root_url)
  end
end
