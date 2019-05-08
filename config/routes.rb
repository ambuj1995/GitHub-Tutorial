Rails.application.routes.draw do
  devise_for :users
  root "dashboards#index"
  resources :profiles
  resources :posts
  resources :comments do
    # member do
    #   get :post_comments
    # end 
    collection do
      get :for_post
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
