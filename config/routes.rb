Rails.application.routes.draw do
  
  root to: 'homus#top'
  
  # get 'animals/index'
  # get 'animals/show'
  # get 'animals/edit'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'homes/top'
  
  devise_for :users
  resources :animals, only: [:create, :new, :index, :show, :destroy, :edit, :update] do
    resources :animal_comments, only: [:create, :destroy]
  end
  
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
    get '/users', to: 'devise/registrations#new'
  end
  
  namespace :genres do
  get 'toukens/index'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
