Rails.application.routes.draw do

  resources :songs do
    collection do
      get 'search'
    end
  end

  get '/concerts/search' => 'concerts#search'
  get '/home' => 'layouts#index'
  get '/concerts/:id' => 'layouts#index'
  get '/templates/:path.html' => 'templates#template', constraints: { path: /.+/ }

  namespace :api, defaults: {format: :json} do
    resources :song_groups, only: [:index]
    resources :concerts, only: [:index, :show]
  end

  root to: 'layouts#index'
end
