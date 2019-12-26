Rails.application.routes.draw do
  # Custom Errors
  %w( 404 403 500 ).each do |code|
    get code, :to => "errors#show", :code => code
  end

  devise_for :users

  devise_for :models

  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  root 'welcome#index'
end
