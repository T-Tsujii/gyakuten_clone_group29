class TextBooksController < ApplicationController

  def index
    if params[:genre].blank?
      @q = TextBook.where(genre: ["Basic", "Git", "Ruby", "Ruby on Rails"]).ransack(params[:q])
      @text_books = @q.result.order(:id)
    else
      @q = TextBook.where(genre: params[:genre]).ransack(params[:q])
    end
    @text_books = @q.result
    @read_textbooks_ids = current_user.reads.pluck(:text_book_id)
  end
  
  def show
    @text_book = TextBook.find(params[:id])
  end
end
