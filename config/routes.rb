Rails.application.routes.draw do
  root 'home#index'

  resources :songs do
    collection do
      get 'search'
    end
  end

  resources :concerts do
    collection do
      get 'search'
    end
  end

  namespace :api, defaults: {format: :json} do
    resources :song_groups, only: [:index]
    resources :concerts, only: [:index, :show]
  end


end
