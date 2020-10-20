class MoviesController < ApplicationController
  PER = 18
  def index
    @movies = Movie.where(genre: params[:genre]).page(params[:page]).per(PER)
  end
end
