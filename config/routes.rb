Rails.application.routes.draw do

  resources :referals
  devise_for :users, controllers: { registrations: "registrations"}

  root :to => 'home#index'

    resources :projects
    resources :skills
    resources :home, only: [:index]
    resources :blogs do
      resources :comments
    end
end
