class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
    
  end
  
  def create
    @article = Article.new(article_params)
   
    @article.save
    redirect_to @article
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end

end
