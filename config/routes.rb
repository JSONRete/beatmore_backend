Rails.application.routes.draw do
  resources :producers
  # post "producer_pull", to: “action#producers"
  # resources :producers
  resources :beats
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
