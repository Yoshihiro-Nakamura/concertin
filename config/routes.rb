Rails.application.routes.draw do
  root 'home#index'

  namespace :api, defaults: {format: :json} do
    resources :song_groups, only: [:index] do
      collection do
        get 'search'
      end
    end
  end

end
