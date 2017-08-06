Rails.application.routes.draw do

  root :to => 'home#index'

    resources :projects
    resources :skills
    resources :home, only: [:index]
end
