class WatchesController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    current_user.watches.create!(movie_id: @movie.id)
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    current_user.watches.find_by(movie_id: @movie.id).destroy!
  end

  # def create
  #   current_user.watches.create!(movie_id: params[:movie_id])
  #   redirect_back(fallback_location: root_path)
  # end

  # def destroy
  #   current_user.watches.find_by(movie_id: params[:movie_id]).destroy!
  #   redirect_back(fallback_location: root_path)
  # end
end
