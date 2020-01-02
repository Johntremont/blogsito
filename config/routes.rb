Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  
  devise_for :models


  get 'welcome/index'
  get '/not_found', to: 'errors#not_found'
  get '/422', to: 'errors#unacceptable'
  get '/500', to: 'errors#500'
  get '/403', to: 'errors#403'

  resources :articles do
    resources :comments
  end

  root 'welcome#index'
end
