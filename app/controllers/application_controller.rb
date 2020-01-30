class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :set_categories

  private

    def set_categories
      @categoriesmenu = Category.all
    end

end
