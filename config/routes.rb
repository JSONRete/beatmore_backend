Rails.application.routes.draw do
  resources :producers
    get 'producer_pull', to: 'producers#create_prod'
  resources :beats
end
