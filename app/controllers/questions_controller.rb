class QuestionsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create,:idnex,:show]

    def show
        @question = Question.find(params[:id])
        @answer = Answer.new
    end

    def index
        @questions = Questions.all.order(id: :asc)
        @question = Question.new
    end

    def create
        @question = Question.new(question_params)
        @question.save
    end
    private
        def question_params
            params.require(:question).permit(:title, :detail)
        end

end
