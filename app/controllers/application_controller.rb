class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    # def set_search
    #     @search = User.ransack(params[:q])
    #     @users = @search.result
    # end
end
