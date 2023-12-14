class ArticlesController < ApplicationController

    # before_action :authenticate_user!
    def before_action
      @posts = Article.all
    end
    def index
        #  @articles = Article.all 
        @q = Article.ransack(params[:q])
        @articles = @q.result
        @posts = Article.all
    end

    def show 
        @article = Article.find(params[:id])
    end
end
