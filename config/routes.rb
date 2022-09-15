Rails.application.routes.draw do
  #get 'sessions/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    #root "users#new"
    root "sessions#new"
    resources :articles
    get 'signup', to: 'users#new'
    resources :users, except: [:new] 
    get 'session/login', to: 'sessions#login'
    post 'session/login',to:  'sessions#signin'
    delete '/logout', to: 'sessions#destory'

  # Defines the root path route ("/")
  # root "articles#index"
end
