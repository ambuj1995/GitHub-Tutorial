Rails.application.routes.draw do
<<<<<<< HEAD
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
=======
  devise_for :users
  root "datachecks#index"
  resources :datachecks
  resources :profiles
>>>>>>> cfb847500bd5f83b7cd2c0e634a3f79cb74b9616
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
