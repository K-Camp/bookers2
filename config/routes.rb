Rails.application.routes.draw do
  
  devise_for :users
  root to: "homes#top"
  resource :books, only: [:new, :create]
  resource :users, only: [:edit, :create]
end
