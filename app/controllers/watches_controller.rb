class WatchesController < ApplicationController
  def create
    current_user.watchs.create!(movie_id: params[:movie_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    current_user.watchs.find_by(movie_id: params[:movie_id]).destroy!
    redirect_back(fallback_location: root_path)
end
