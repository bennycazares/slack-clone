Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'

  get 'sign_in' =>'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions_create'
  get 'sign_out'=> 'sessions#delete', as: :sign_out

end
