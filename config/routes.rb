Rails.application.routes.draw do


# USERS
devise_for :users, :controllers => {
   :registrations => 'users/registrations',
   :sessions => 'users/sessions',
   :passwords => 'users/passwords'
 }
 devise_scope :user do
   get '/logout', to: 'devise/sessions#destroy', as: :logout
 end

 get '/' => 'items#index', as: 'top'
 get 'items/search'
 get 'items/search_result'
 get '/cart' => 'cart_items#index', as: 'cart'
 get '/thanks' => 'users#thanks'
 patch '/users/:id'=> 'users#destroy_update', as: 'user_destroy'

 resources :users, only: [:show, :edit, :update] do
   resources :orders, only: [:new, :create, :edit, :update]
 end
 resources :artists, only: [:create]
 resources :genres, only: [:show]
 resources :items, only: [:index, :show, :create]  do
     resources :cart_items, only: [:create]
 end

# ADMINS
 devise_for :admins, only: [:sign_in, :sign_out, :session],
 :controllers => {
   :sessions => 'admins/sessions'
 }
 get '/admins/' => 'admins#top'

 namespace :admins do
   get 'discs/edit'
   get 'items/edit'
   resources :artists, only: [:show , :new, :create]
   resources :users, only: [:show, :index, :edit, :update]
   resources :items, only: [:show, :create, :edit, :update] do
     resources :discs, only: [:show, :edit, :update] do
       resources :songs, only: [:create, :destroy, :update]
     end
   end
 end
 namespace :admins do
   resources :artists, only: [:show] do
     resource :items, only: [:new]
   end
 end
 get 'admins/stock'=> 'admins#stock', as: 'admins_stock'
 get 'admins/status'=> 'admins#status', as: 'admins_status'
 patch 'admins/items/:item_id/hidden' => 'admins/items#hidden', as: 'hidden_item'

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

