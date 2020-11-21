class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    answer = @question.answers.create!(answer_params)
    redirect_to @question, notice: "投稿しました"
  end

  private
  def answer_params
    params.require(:answer).permit(:content)
  end
end
