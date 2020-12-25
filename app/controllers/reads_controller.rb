class ReadsController < ApplicationController
  def create
    @text_book = TextBook.find(params[:text_book_id])
    current_user.reads.find_by(text_book_id: @text_book.id)
  end
  def destroy
    @text_book = TextBook.find(params[:text_book_id])
    current_user.reads.find_by(text_book_id: @text_book.id).destroy!
  end
  # def create
  #   current_user.reads.create!(text_book_id: params[:text_book_id])
  #   redirect_back(fallback_location: root_path)
  # end
  # def destroy
  #   current_user.reads.find_by(text_book_id: params[:text_book_id]).destroy!
  #   redirect_back(fallback_location: root_path)
  # end
  
end
