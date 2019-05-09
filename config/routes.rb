Rails.application.routes.draw do
  root "dashboards#index"
  devise_for :users
  resources :profiles
  resources :posts do 
    member do
      get :like_post
    end
  end
  resources :comments do
    member do
      get :like_comment
    end 

    collection do
      get :for_post
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
