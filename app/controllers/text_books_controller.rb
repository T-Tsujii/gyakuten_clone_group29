class TextBooksController < ApplicationController
  def index
    @text_books = TextBooks.all.order(id: :asc)
  end

  def show
    @text_book = TextBook.find(params[:id])
  end

end
