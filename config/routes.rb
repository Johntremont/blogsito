Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  root 'welcome#index'
end
