Rails.application.routes.draw do
  get '/test', to: 'application#test'
  resources :comments
  resources :quotes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
