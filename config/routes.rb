Rails.application.routes.draw do
  resources :cocktails, except: [:destroy, :update] do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
end
