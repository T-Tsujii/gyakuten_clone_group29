class ReadsController < ApplicationController
  def create
    current_user.reads.create!(text_book_id: params[:text_book_id])
    redirect_back(fallback_location: root_path)
  end
  def destroy
    current_user.reads.find_by(text_book_id: params[:text_book_id]).destroy!
    redirect_back(fallback_location: root_path)
  end
end
