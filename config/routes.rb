Rails.application.routes.draw do
  resources :subs
  root 'subs#index'

  resources :subs do 
    resources :topics
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
