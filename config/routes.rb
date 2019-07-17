Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'welcome/index'
  # resources :articles
  resources :articles do
    resources :comments
  end

  get 'signup'  => 'users#new'
  resources :users

  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  # For details on the DSL available within thi`s file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
