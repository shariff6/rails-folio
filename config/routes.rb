Rails.application.routes.draw do
 resources :admins do
   resources :projects
 end
 resources :admins do
   resources :skills
 end
end
