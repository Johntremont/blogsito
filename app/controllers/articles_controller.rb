class ArticlesController < ApplicationController
    before_action :authorize_action, only: [:edit, :update, :destroy]

    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end


    def new
        @article = Article.new
    end
    
    def edit
        #  debugger
        @article = Article.find(params[:id])
        
    end

    def create
        @article = Article.new(article_params)
            if @article.save
                redirect_to @article
            else
                render 'new'
            end
    end

    def update
        @article = Article.find(params[:id])
       
        if @article.update(article_params)
          redirect_to @article
        else
          render 'edit'
        end
    end
    
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
       
        redirect_to articles_path
    end

    private
        def article_params
            params.require(:article).permit(:title, :text).merge(user_id: current_user.id)
        end

        def authorize_action
            # debugger
            render html: "<strong>Not Found</strong>".html_safe unless current_user == Article.find(params[:id]).user
        end
end


