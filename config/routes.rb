Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create]
  root 'pages#index'
  resources :user_sessions, only: [:new, :create] do
    get :destroy
    collection do
      get :log_in
    end
  end

  resources :products

  resources :product_baskets, only: [:new, :create] do
    get :product_basket_delete

  end

  resources :basket, only: [:index, :new, :create,:edit,:update]do

  end

  resources :users, only: [:index, :new, :create] do

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
