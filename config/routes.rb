Rails.application.routes.draw do
  namespace :site do
    get 'meeting/index'
  end

  root 'site/meeting#index'

  match "meeting/data", :to => "meeting#data", :as => "data", :via => "get"
  match "meeting/db_action", :to => "meeting#db_action", :as => "db_action", :via => "post"


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
