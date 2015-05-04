Prelaunchr::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => "users#new"

  post 'users/create' => 'users#create'
  get 'refer-a-friend' => 'users#refer'

  unless Rails.application.config.consider_all_requests_local
    get '*not_found', to: 'users#redirect', :format => false
  end
end
