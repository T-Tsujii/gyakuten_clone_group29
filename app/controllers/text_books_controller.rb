class TextBooksController < ApplicationController
  def index
    @text_books = TextBooks.all
  end

  def show
    @text_book = TextBook.find(params[:id])
  end

end
