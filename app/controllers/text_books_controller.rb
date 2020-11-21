class TextBooksController < ApplicationController
  def index
    if params[:genre].nil?
      @text_books = TextBook.where(genre: ["Basic", "Git", "Ruby", "Ruby on Rails"])
    else
      @text_books = TextBook.where(genre: params[:genre])
    end
  end

  def show
    @text_book = TextBook.find(params[:id])
  end

  def search
    text_book_search = TextBookSearch.new(params_text_book_search)
    @text_books = text_book_search.execute
  end

  private

  def params_text_book_search
    params.permit(:search_title)
  end

end
