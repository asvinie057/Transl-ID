Rails.application.routes.draw do
  devise_for :users
  root 'main#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/edit-translator', to: 'private#edit'
get '/edit-foreigner', to: 'private#show'
get '/translator', to: 'public#show'
get '/translators', to: 'public#index'

#resources :private only: [:edit, :show]
#resources :public only: [:index, :show]


end