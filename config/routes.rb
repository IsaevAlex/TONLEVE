Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'home#index'
  resources :users do
      resources :avatars
  end 
  
  resources :conversations do
        resources :messages
  end
  resources :phones 
  get 'search', to: 'search#index'
  
  resources :news

  resources :products do 
    
    resources :product_comments
    resources :product_images

    put :favorite, on: :member

    member do
        put "like", to: "products#upvote"
        put "dislike", to: "products#downvote"
    end

  end

  resources :services do
    resources :service_orders, only: [:create, :show, :destroy, :index]
    resources :service_images
    resources :service_comments
    put :favorite, on: :member
    member do
        put "like", to: "services#upvote"
        put "dislike", to: "services#downvote"
    end
  end

end
