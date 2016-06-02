Rails.application.routes.draw do


  root 'cocktails#index'

  resources :cocktails do
    resources :doses, only: [:new, :create, :show]
  end
  resources :doses, only: [:destroy]
end
