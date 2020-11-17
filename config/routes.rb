Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pets, only: [:index, :show, :create, :new]
end


# resources :appointments, only: [:show, :create, :new]
#   end
#   resources :appointments, only: [:index, :destroy]
