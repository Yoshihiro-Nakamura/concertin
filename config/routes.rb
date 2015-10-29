Rails.application.routes.draw do
  root 'home#index'

  resources :songs do
    collection do
      get 'search'
    end
  end

  namespace :api, defaults: {format: :json} do
    resources :song_groups, only: [:index]
  end

end
