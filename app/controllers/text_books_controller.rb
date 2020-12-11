class TextBooksController < ApplicationController

  def index
    if params[:genre].nil?
      @q = TextBook.where(genre: ["Basic", "Git", "Ruby", "Ruby on Rails","Php"]).ransack(params[:q])
      @text_books = @q.result
    else
      @q = TextBook.where(genre: params[:genre]).ransack(params[:q])
      @text_books = TextBook.where(genre: params[:genre])
    end
  end
  
  def show
    @text_book = TextBook.find(params[:id])
  end
end
