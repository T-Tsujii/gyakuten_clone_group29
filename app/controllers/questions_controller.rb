class QuestionsController < ApplicationController
  def create
    question = Question.create!(question_params)
  end

  def index
    @questions = Question.all.order(id: :desc)
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
  end

  private
  def question_params
    params.require(:question).permit(:title, :detail)
  end
end
