Rails.application.routes.draw do
  resources :main do
    resources :music do
      resources :comments do
      end
    end
  end

end
