Rails.application.routes.draw do


  devise_for :users, controllers: { registrations: "registrations" }
  resources :profiles
  resources :posts
  resources :carts
  resources :departments do
    resources :items
  end

  resources :items do
      member do
          get :flop
      end
  end

  scope 'items/:item_id', as: 'item' do
    resources :comments, only: [:new, :create]
  end
  scope 'carts/:item_id', as: 'cart' do
    resources :items, only: [:new, :create]
  end



  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
