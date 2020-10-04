class AnswersController < ApplicationController
    def create
        @answer = Answer.new(answer_parmas)
        @answer.save
    end

    private
    def answer_params
        params.require(:answer).permit(:content)
    end

    
end