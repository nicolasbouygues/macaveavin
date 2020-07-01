Rails.application.routes.draw do
  resources :cellars do
    resources :wines, only: [ :index, :new, :create ]
  end
  resources :wines, only: [:show, :edit, :update, :destroy]
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
