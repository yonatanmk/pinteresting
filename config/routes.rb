Rails.application.routes.draw do
  devise_for :installs
  resources :pins
  devise_for :users
    root "pins#index"
    get "about" => "pages#about" #creates about path
    #get "about" => "pages#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
