Rails.application.routes.draw do
  root :to => "courses#index"
  resources :users
  resources :posts
  resources :courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
