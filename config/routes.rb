Rails.application.routes.draw do
  resources :bookratings
  resources :movieratings
  resources :songratings
  resources :books
  resources :movies
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
