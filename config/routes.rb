Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root 'welcome#home'
  get 'welcome/home', to: 'welcome#home'
  get 'welcome/about', to: 'welcome#about'
  get 'signup', to: 'users#new'
  post 'users',to:'users#create'
  get 'signup',to: 'users#new'



  resources :articles
  resources :users,except:[:new]

  get 'login', to:'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout',to: 'sessions#destroy'

end
