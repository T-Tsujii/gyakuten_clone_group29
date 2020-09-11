class AwsTextsController < ApplicationController
  def index
    @aws_texts = AwsText.all
  end

  def show
    @aws_texts_title = AwsText.find(params[:id]).title
    @aws_texts_content = AwsText.find(params[:id]).content
  end
end
