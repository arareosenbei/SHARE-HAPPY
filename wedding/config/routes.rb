Rails.application.routes.draw do
  root 'homes#top'
  get 'homes/about' => 'homes#about'
  devise_for :users
  resources :users, only:[:index, :show, :edit, :update] do
    resources :comments, only:[:create, :destroy]
    resource :faborites, only:[:create, :destroy]
  end
  resources :posts
  resources :places
  resources :reviews, only:[:index, :create, :edit, :update, :destroy]

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
