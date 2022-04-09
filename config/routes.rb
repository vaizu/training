Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "homes#top"

  resources :news, only: [:new,:show,:create,:edit,:update,:index,:destroy]

  get '/profile', to: 'homes#profile'

  resources :releases, only: [:new,:create,:index,:show,:edit,:update,:destroy]
end
