Rails.application.routes.draw do
  get 'animals/index'
  get 'animals/show'
  get 'animals/edit'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'homes/top'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
