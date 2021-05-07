Rails.application.routes.draw do
  namespace :site do
    get 'meeting/index'
  end

  root :to => 'site/meeting#index'

  match "site/meeting/data", :to => "site/meeting#data", :as => "data", :via => "get"
  match "site/meeting/db_action", :to => "site/meeting#db_action", :as => "db_action", :via => "get"


  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
