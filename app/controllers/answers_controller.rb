class AnswersController < ApplicationController
  def create
    answer = Answer.create!(answer_params)
    redirect_to questions_path
  end

  private
  def answer_params
    params.require(:answer).permit(:content)
  end
end
