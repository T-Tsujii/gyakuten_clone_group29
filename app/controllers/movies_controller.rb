class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show edit update destroy]

  def index
    @movies = Movie.order(id: :asc)
  end

  def show
  end
  
  def create
    movie = Movie.create!(movie_params)
    flash[:notice] = "投稿しました"
    redirect_to movie
  end

  def edit
  end

  def update
    @movie.update!(movie_params)
    flash[:notice] = "更新しました"
    redirect_to @movie
  end

  def destroy
    @movie.destroy!
    flash[:alert] = "削除しました"
    redirect_to @movie
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end
  
  def movie_params
    params.require(:movie).permit(:title, :url)
  end

end  