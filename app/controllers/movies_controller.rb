class MoviesController < ApplicationController
  PER = 12
  def index
    if params[:genre].nil?
      @movies = Movie.where(genre: ["Basic", "Git", "Ruby", "Ruby on Rails"]).page(params[:page]).per(PER)
    else
      @movies = Movie.where(genre: params[:genre]).page(params[:page]).per(PER)
    end
    @watched_movie_ids = current_user.watches.pluck(:movie_id)
  end
end
