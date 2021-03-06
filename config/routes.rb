Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :users
 root to: "users#index"

 get 'login', to: 'sessions#new'
 post 'login', to: 'sessions#create'
 delete 'logout', to: 'sessions#delete'

 get 'search', to: 'stocks#search'
 get 'portfolio', to: 'users#portfolio'

end
