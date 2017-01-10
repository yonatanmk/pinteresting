Rails.application.routes.draw do
  root 'questions#index'
  resources :questions, only: [:index, :show, :create, :new, :destroy] do
    resources :answers, only: [:create]
  end
end
