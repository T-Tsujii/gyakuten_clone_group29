class QuestionsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create,:idnex,:show]

    def show
        @question = Question.find(params[:id])
        @answer = Answer.new
        @answers = @question.answers.order(id: :desc)
    end

    def index
        @questions = Questions.all.order(id: :asc)
        @question = Question.new
    end

    def create
        @question = Question.new(question_params)
        if @question.save
            flash[:notice] = "質問を投稿しました。"
            redirect_to action: :index
        else
            flash.now[:alert] = "エラーがあります！"
            render("questions/index")
    end

    def edit 
        @question=Question.find(params[:id])
    end

    def update
        @question = Question.find(params[:id])
        if @question.update(question_params)
            flash[:notice] = "質問を編集しました"
            redirect_to @question
        else
            flash.now[:alert]="エラーがあります！"
            render("questions/edit")
    end

    private
        def question_params
            params.require(:question).permit(:title, :detail)
        end

end
