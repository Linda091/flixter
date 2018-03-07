Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
  resources :courses, only: [:index, :show]
  resources :lessons, only: [:show]
  namespace :instructor do
    resources :sections, only: [] do
      resources :lessons, only: [:new, :create, :show, :edit, :destroy]
    end
    
    resources :courses, only: [:new, :create, :show, :edit, :destroy] do
     resources :sections, only: [:new, :create, :show, :edit, :destroy] do
      
     end
    end
  end
end
