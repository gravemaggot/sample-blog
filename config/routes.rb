Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'

  resource  :contacts, only: [:new, :create], path_names: { :new => '' }
  resources :articles do
    resources :comments, only: [:new, :create]
  end

  root to: 'articles#index'
end
