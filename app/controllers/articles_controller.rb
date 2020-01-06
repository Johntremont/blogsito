class ArticlesController < ApplicationController
  before_action :authorize_action, only: [:edit]
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all.order(created_at: :desc)

  end

  def show; end


  def new
    @article = Article.new
  end
  
  def edit; end

  def create
    @article = Article.new(article_params)
    if @article.save
        redirect_to @article
    else
        render 'new'
    end
  end

  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
  
  def destroy
    @article.destroy
    
    redirect_to articles_path
  end

  private

    def article_params
      params.require(:article).permit(:title, :text).merge(user_id: current_user.id)
    end

    def authorize_action
        # debugger
        unless current_user.present? && current_user.id == Article.find(params[:id])&.user&.id
          redirect_to '/not_found' 
        end 
    end

    def set_article 
      @article = Article.find(params[:id])
    end
end



