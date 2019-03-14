Rails.application.routes.draw do
  root to: "pages#new"
  resources :pages, only: [:new, :create]
end
