Rails.application.routes.draw do
  get '/admins/' => 'admins#top'
  get '/' => 'items#index', as: 'top'
  get '/thanks' => 'users#thanks'
  get '/cart' => 'cart_items#index', as: 'cart'
  get '/search' => 'items#search'
  post 'new_user_order_path' => 'orders#sending_create'

  devise_for :admins, only: [:sign_in, :sign_out, :session],
  :controllers => {
    :sessions => 'admins/sessions'
  }
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
  }

namespace :admins do
    resources :items, only: [:show, :create] do
      resources :discs, only: [:show] do
        resource :songs, only: [:create, :destroy, :update]
    end
  end
    resources :artists, only: [:show , :new, :create]
    resources :users, only: [:show, :index, :edit, :update]
end

namespace :admins do
  resources :artists, only: [:show] do
    resources :items, only: [:new]
  end
end

resources :users, only: [:show, :edit, :update] do
    resources :sendings, only: [:create, :edit, :update]
    resources :orders, only: [:new, :create, :edit, :update]
    resources :cart_items, only: [:index]
  end
 resources :artists, only: [:create]
 resources :genres, only: [:show]
 resources :items, only: [:intex, :show, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

