class MonetizesController < ApplicationController
    PER = 12
    def index
        if params[:genre].nil?
        @monetizes = Movie.where(genre: ["Money"]).page(params[:page]).per(PER)
        else
        @monetizes = Movie.where(genre: params[:genre]).page(params[:page]).per(PER)
        end
    end
end