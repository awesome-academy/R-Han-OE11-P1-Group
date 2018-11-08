Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: "channel/omniauth_callbacks"
  }
  get "static_pages/home"
  get "users/new"
  root "static_pages#home"
end
