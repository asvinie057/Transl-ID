Rails.application.routes.draw do
  devise_for :translators, path: 'translators',  controllers: { sessions: "translators/sessions"}
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions"}
  root 'main#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
