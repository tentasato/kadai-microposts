class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:favor_id])
    current_user.favor(micropost)
    flash[:success] = 'ポストをお気に入りしました。'
    redirect_back(fallback_location: root_path)
  end

  def destroy
    micropost = Micropost.find(params[:id])
    current_user.unfavor(micropost)
    flash[:success] = 'ポストをお気に入りから削除しました。'
    redirect_back(fallback_location: root_path)
  end
  
    
end
