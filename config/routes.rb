Rails.application.routes.draw do

  resources :songs do
    collection do
      get 'search'
    end
  end
  get '/concerts' => 'home#index'
  get '/concerts/new' => 'concerts#new'
  post '/concerts' => 'concerts#create'
  get '/concerts/search' => 'concerts#search'
  # get '/home' => 'layouts#index'
  get '/home' => 'home#index'
  # get '/concerts/:id' => 'layouts#index'
  get '/concerts/:id' => 'home#index'
  # get '/orchestras' => 'layouts#index'
  get '/orchestras' => 'home#index'
  # get '/orchestras/:id' => 'layouts#index'
  get '/orchestras/:id' => 'home#index'
  # get '/about' => 'layouts#index'
  get '/about' => 'home#index'
  get '/templates/:path.html' => 'templates#template', constraints: { path: /.+/ }

  namespace :api, defaults: {format: :json} do
    resources :song_groups, only: [:index]
    resources :concerts, only: [:index, :show] do
      collection do
        get :get_hall
        get :get_conductor
        get :get_concert_title
        get :get_artist
        get :get_contact
        get :get_instrument
        get :get_composer
        get :get_song
      end
    end
    resources :orchestras, only: [:show]
  end

  # root to: 'layouts#index'
  root to: 'home#index'
end
