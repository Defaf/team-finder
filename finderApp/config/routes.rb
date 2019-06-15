Rails.application.routes.draw do

  resources :events
  devise_for :users
   # In `config/boot.rb`
   ENV['EXECJS_RUNTIME'] = 'Node'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/home", to: "home#index"
  root to: "home#index"
end
