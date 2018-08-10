Rails.application.routes.draw do
  resources :numbers, only: :show
end
