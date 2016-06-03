Rails.application.routes.draw do
  root 'cocktails#index'
  resources :doses, only: [:destroy]
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
end
