Rails.application.routes.draw do
  get 'uploader/index'

  get 'uploader/form'
  post 'uploader/form' => 'uploader#form'
  post 'uploader/upload'
  get 'uploader/download'
  get 'music/uploader/search' => 'uploader#search'
  get 'music/search/' => 'music#search'
  post 'music/new' => 'music#create'
  patch '/music/:music_id/uploader/:id' => 'uploader#update'

  devise_for :users
  resources :users, only: :show
  root 'main#index'
  resources :main
    # get 'main' => 'main#index'
  resources :music do
    resources :uploader do
      resources :comments, only: [:index, :new, :create]
    end
  end

end
  # get   'music/new'  =>  'music#new'
