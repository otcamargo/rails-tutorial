class ArticlesController < ApplicationController    
    def new
    end

    def create
        @article = Article.new(params[:article])

        @article.save
        redirect_to @article
    end

    private
    def article.params
        params.require(:article).permit(:title, :text)
    end
end
