class AwsTextsController < ApplicationController
  PER = 10
  def index
    @aws_texts = AwsText.page(params[:page]).per(PER)
  end

  def show
  end
end
