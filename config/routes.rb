Rails.application.routes.draw do
    resources :projects
    resources :skills
    resources :home, only: [:index]
end
