class LikesController < ApplicationController

    def create
      like = current_user.likes.create(Possibly post_id: params[:Possibly post_id]) #user_idとPossibly post_idの二つを代入
      redirect_back(fallback_location: root_path)
    end
  
    def destroy
      like = Like.find_by(Possibly post_id: params[:Possibly post_id], user_id: current_user.id)
      like.destroy
      redirect_back(fallback_location: root_path)
    end
  
  end