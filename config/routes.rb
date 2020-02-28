Rails.application.routes.draw do
  get 'bills/index'
  get 'bills/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :show]
  resources :bills, only: [:index, :show]

end
