Rails.application.routes.draw do


  root 'home#index'

  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  get 'sign_out'=> 'sessions#delete', as: :sign_out

  get 'sign_up' => 'users#new', as: :new_user
  post 'sign_up' => 'users#create', as: :users

end
