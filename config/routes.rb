Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users
  root to: "dashboard#index"
  # These supercede other /customers routes, so must
  # come before resource :customers
  get "customers/ng",                 to: "customers#ng"
  get "customers/ng/*angular_route",  to: "customers#ng"
  resources :customers, only: [ :index, :show ]
  #
end
