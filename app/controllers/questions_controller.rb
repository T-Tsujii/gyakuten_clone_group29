class QuestionsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create,:idnex,:show]
    def new
        @question = Question.new
        @answer = Answer.new
    end

    def show
        @question = Question.find(params[:id])
    end

    def index
        @questions = Questions.all.order(id: :asc)
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
