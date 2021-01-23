Rails.application.routes.draw do
  root 'homes#index'
  post '/homes/guest_sign_in', to: 'homes#new_guest'
  # get 'about' => 'homes#about'
  devise_for :users
  resources :users, only: %i[index show edit update]
  resources :posts do
    resource :favorites, only: %i[create destroy]
    resources :comments, only: %i[create destroy]
  end
  resources :places do
    resources :reviews, only: %i[index new create edit update destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
