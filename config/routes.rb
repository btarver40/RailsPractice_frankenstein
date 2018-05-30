Rails.application.routes.draw do
  root 'static_pages#home'

  resources :dogs
  resources :icecreams
end
