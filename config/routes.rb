Rails.application.routes.draw do

  root :to => 'home#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :referals
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        passwords: 'users/passwords',
        registrations: 'users/registrations'
    }


    resources :projects
    resources :skills
    resources :home, only: [:index]
    resources :blogs do
      resources :comments
    end
end
