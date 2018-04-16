Rails.application.routes.draw do
  get '/admins/' => 'admins#top'
  
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
    resources :artists, only: [:show , :new, :create] do
      resources :items, only: [:show, :new] do
        resources :discs, only: [:show] do
          resource :songs
        end
      end
    end
  end

  resources :users, only: [:show]
  resources :artists, only: [:create]
  resources :items, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
