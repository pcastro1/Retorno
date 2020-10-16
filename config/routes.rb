Rails.application.routes.draw do
  resources :schools
  resources :searches
  root 'searches#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
