class AnswersController < ApplicationController
    def create
        @question = Question.find(params[:question_id])
        @answer = Answer.new(answer_parmas)
        @answer.save
    end

    private
    def answer_params
        params.require(:answer).permit(:content,:question_id)
    end
    
end