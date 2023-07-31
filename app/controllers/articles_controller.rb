class ArticlesController < ApplicationController

    # before_action :authenticate_user!

    def index
        #  @articles = Article.all 
        @q = Article.ransack(params[:q])
        @articles = @q.result
    end

    def show 
        @article = Article.find(params[:id])
    end
end
