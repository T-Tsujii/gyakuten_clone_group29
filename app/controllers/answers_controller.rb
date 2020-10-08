class AnswersController < ApplicationController
    def create
        @question = Question.find(params[:question_id])
        @answer = @question.answers.new(answer_parmas)
        if @answer.save
            flash[:notice]="回答を投稿しました"
            redirect_to @question
        else
            flash.now[:alert]= "エラーがあります!"
            render "questions/show"
    end

    private
    def answer_params
        params.require(:answer).permit(:content)
    end
    
end