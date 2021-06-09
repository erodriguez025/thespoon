Rails.application.routes.draw do
  # get 'pages/about'
  # get 'pages/contact'
  root to: 'pages#home'
  
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "restaurants", to: "restaurants#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
