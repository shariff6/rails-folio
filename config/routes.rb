Rails.application.routes.draw do
 resources :admin do
   resources :projects
 end
 resources :admin do
   resources :skills
 end
end
