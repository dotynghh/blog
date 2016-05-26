Rails.application.routes.draw do
  root 'welcome#index'

  resources :users
  resources :sessions
  resources :articles do
    collection do
      get :search
    end
  end
end
