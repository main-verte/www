Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|da/ do
    devise_for :users
    root to: 'pages#home'
    get 'about', to: 'pages#about'
    get 'components', to: 'pages#components'
    resources :contact_requests, only: [:new, :create]
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
