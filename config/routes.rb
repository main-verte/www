Rails.application.routes.draw do
  devise_for :users
  scope '(:locale)', locale: /fr|da/ do
    root to: 'pages#home'
    get 'pages/about'
    get 'pages/components'
    resources :contact_requests, only: [:new, :create]
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
