Rails.application.routes.draw do

  devise_for :users
  root to: 'cordes#index'
  resources :cordes, only: :index

end
