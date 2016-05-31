Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :users do
      resources :avatars
  end  
  resources :products do 
    resources :product_comments
    resources :product_images
    put :favorite, on: :member
  end
  resources :services do
    resources :service_images
    resources :service_comments
  end
  resources :conversations do
    resources :messages
  end
end
