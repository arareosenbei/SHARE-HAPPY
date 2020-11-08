Rails.application.routes.draw do
  root 'homes#top'
  get 'about' => 'homes#about'
  devise_for :users
  resources :users, only:[:index, :show, :edit, :update] do
    resources :comments, only:[:create, :destroy]
    resource :favorites, only:[:create, :destroy]
  end
  resources :posts
  resources :places
  resources :second_places,only:[:index, :show, :create, :edit, :update, :destroy]
  resources :reviews, only:[:index, :create, :edit, :update, :destroy]

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
