Rails.application.routes.draw do
  devise_for :users
  root 'places#index' # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :places do
    resources :photos, only: :create
    resources :comments, only: :create
  end
  resources :users, only: :show
end
