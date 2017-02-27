Rails.application.routes.draw do
  root to: 'hot_links#index'

  namespace :api do
    namespace :v1 do
      resources :hot_links, only: [:create]
    end
  end
end
