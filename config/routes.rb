Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  resources :ramen_shops do
    resources :reviews, only: [:index, :new, :create]
  end
end
