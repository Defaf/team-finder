Rails.application.routes.draw do

  resources :events do 
    resources :teams do 
      resources :members
    end 
  end
  
  devise_for :users
   # In `config/boot.rb`
   ENV['EXECJS_RUNTIME'] = 'Node'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=begin
  get "/events", to: "events#index"
  root to: "events#index"
=end
  get "/home", to: "home#index"
  root to: "home#index"

  #get "/account", to: "home#account",  as: "account" # account_path(account)
  #get "/login", to: "home#login",  as: "login" # login_path(account)
  #get "/signup", to: "home#signup",  as: "signup" # signup_path(account)


end
