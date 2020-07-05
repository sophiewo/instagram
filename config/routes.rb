Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  unauthenticated do
   root :to => 'home#index'
end

authenticated do
  root :to => 'posts#index'
end


  resources :posts
  root "posts#index"
end