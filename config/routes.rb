Rails.application.routes.draw do
  resources :meetings
  namespace :site do
    get 'meetings/index'
  end

  root to: 'meetings#index'


  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
