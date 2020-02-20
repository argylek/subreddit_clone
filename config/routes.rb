Rails.application.routes.draw do
  resources :sub
  root 'subs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
