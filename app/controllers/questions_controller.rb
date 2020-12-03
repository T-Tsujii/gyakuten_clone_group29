class QuestionsController < ApplicationController
  def create
    question = Question.create!(question_params)
    redirect_to questions_path
  end

  def index
    @questions = Question.all.order(id: :desc)
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
    @question.view_count += 1
    @question.save
    @answers = @question.answers.order(id: :desc)
    @answer = Answer.new
  end

  private
  def question_params
    params.require(:question).permit(:title, :detail)
  end
end
