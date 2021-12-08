Rails.application.routes.draw do
  resources :producers
    get 'producer_pull', to: 'producers#create_prod'

  # resources :producers
  resources :beats
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
