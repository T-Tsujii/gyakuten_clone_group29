class AnswersController < ApplicationController
    def create
        @question = Question.find(params[:question_id])
        @answer = @question.answer.new(answer_parmas)
        @answer.question_id = @question
        if @answer.save
            flash[:notice]="回答を投稿しました"
            redirect_to("/questions/#{params[:question_id]}")
        else
            flash.now[:alert]= "エラーがあります!"
            render "questions/show"
    end

    private
    def answer_params
        params.require(:answer).permit(:content,:question_id)
    end
    
end