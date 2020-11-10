Rails.application.routes.draw do
  root 'homes#top'
  get 'about' => 'homes#about'
  devise_for :users
  resources :users, only:[:index, :show, :edit, :update]
  resources :posts do
    resource :favorites, only:[:create, :destroy]
    resources :comments, only:[:create, :destroy]
  end
  resources :places do
    resources :reviews, only:[:index, :create, :edit, :update, :destroy]
  end
    

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
