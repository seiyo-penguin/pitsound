Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show
  root 'main#index'
  resources :main
    # get 'main' => 'main#index'
  resources :music do
    resources :comments do
    end
  end

end
