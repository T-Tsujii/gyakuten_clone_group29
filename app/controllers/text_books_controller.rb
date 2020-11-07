class TextBooksController < ApplicationController
  #binding.pry
  def index
    if params[:genre].nil?
      @text_books = TextBook.where(genre: ["Basic", "Git", "Ruby", "Ruby on Rails"])
    else
      @text_books = TextBook.where(genre: params[:genre])
    end
    #@text_books = TextBooks.all
  end

  def show
    @text_book = TextBook.find(params[:id])
  end

end
