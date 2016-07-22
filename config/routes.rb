Rails.application.routes.draw do
  get 'uploader/index'

  get 'uploader/form'

  post 'uploader/upload'

  get 'uploader/download'

  devise_for :users
  resources :users, only: :show
  root 'main#index'
  resources :main
    # get 'main' => 'main#index'
  resources :music do
    resources :uploader do
      resources :comments do
    end
  end
end
  get   'music/new'  =>  'music#new'
end
