Rails.application.routes.draw do
  resources :pins
  devise_for :users
    root "pages#home"
    get "about" => "pages#about" #creates about path
    get "third_page" => "pages#third_page" #creates third_page path
    #get "about" => "pages#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
