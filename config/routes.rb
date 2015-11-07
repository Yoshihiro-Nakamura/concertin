Rails.application.routes.draw do
  root 'layouts#index'

  resources :songs do
    collection do
      get 'search'
    end
  end

  get 'concerts/search' => 'concerts#search'

  get 'concerts/:id' => 'layouts#index'

  namespace :api, defaults: {format: :json} do
    resources :song_groups, only: [:index]
    resources :concerts, only: [:index, :show]
  end


end
