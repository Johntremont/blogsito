class ProfileController < ApplicationController
  def index
    @artilces = Article.all
  end
end
