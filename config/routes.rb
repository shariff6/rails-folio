Rails.application.routes.draw do

  devise_for :users
  root :to => 'home#index'

    resources :projects
    resources :skills
    resources :home, only: [:index]
end
